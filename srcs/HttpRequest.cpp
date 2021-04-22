// CLion
// Created by Foster Grisella on 4/14/21 12:54.
//


#include "../includes/HttpRequest.hpp"

HttpRequest::HttpRequest() : _sBuffer(),
							 _state(State::NEED_INFO), _parserState(ParserState::QUERY_STRING),
							 _method(), _path(), _queryString(), _headers(), _body(), _chunk(), _bodyStart(0),
							 _chunkPoint(0) {
	it = 0;
}

HttpRequest::~HttpRequest() {}

HttpRequest::HttpRequest(const HttpRequest &other) {}

HttpRequest &HttpRequest::operator=(const HttpRequest &other) {
	return *this;
}

int HttpRequest::getState() const {
	return _state;
}

void HttpRequest::setState(int state) {
	_state = state;
}

void HttpRequest::clean() {
	_sBuffer.clear();
	_method.clear();
	_path.clear();
	_queryString.clear();
	_headers.clear();
	_body.clear();
	_parserState = ParserState::QUERY_STRING;
	_state = State::NEED_INFO;
	_bodyStart = 0;
	_chunkPoint = 0;
	for (size_t i = 0; i < _chunk.size(); ++i)
		delete _chunk[i];
	_chunk.clear();

	it = 0;
}

/*
*
*/

void HttpRequest::parse(char *buffer, int bufSize) {
	it++;
#if DEBUG == 1
	std::cout << "it = " << it << std::endl;
#endif
	_sBuffer.append(buffer, bufSize);
	if (_parserState == ParserState::QUERY_STRING)
		queryStringParse();
	if (_parserState == ParserState::HEADERS)
		headersParse();
	if (_parserState == ParserState::BODY)
		bodyParse();
	if (_parserState == ParserState::FINISHED)
		_state = State::FULL;
#if HTTP_REQUEST_DEBUG >= 1
	switch (_parserState) {
		case 0:
			std::cout << MAGENTA << "PARSE QUERY" << RESET << std::endl;
		case 1:
			std::cout << MAGENTA << "PARSE HEADERS" << RESET << std::endl;
		case 2:
			std::cout << MAGENTA << "PARSE BODY" << RESET << std::endl;
		case 3:
			std::cout << MAGENTA << "PARSE FINISHED" << RESET << std::endl;
	}
#endif

#if HTTP_REQUEST_DEBUG == 1
	std::cout << MAGENTA << "DEBUG INFO" << RESET << std::endl;
	std::cout << "method = " << _method << std::endl;
	std::cout << "path  = " << _path << std::endl;
	std::cout << "query string  = " << _queryString << std::endl;
	std::cout << "------------HEADERS------------" << std::endl;
	std::cout << "HEADERS COUNT = " << _headers.size() << std::endl;
	for (auto mapIterator = _headers.begin(); mapIterator != _headers.end(); ++mapIterator) {
		std::cout << mapIterator->first << ": " << mapIterator->second << std::endl;
	}
	std::cout << "-------------------------------" << std::endl;
	std::cout << "body:\n" << _body << std::endl;
	std::cout << MAGENTA << "----------------------------" << std::endl;
#endif

}

void HttpRequest::queryStringParse() {
	if (_sBuffer.find(CRLF) != std::string::npos) {
		_method = std::string(_sBuffer, 0, _sBuffer.find(" "));
		_path = std::string(_sBuffer, _method.length() + 1,
							_sBuffer.find(" ", _method.length() + 1, 1) - _method.length());

		size_t queryStringPos = 0;
		if ((queryStringPos = _path.find('?')) != std::string::npos) {
			_queryString = std::string(_path, queryStringPos + 1);
			_path.resize(queryStringPos);
		}
		_parserState = ParserState::HEADERS;
	}
}

void HttpRequest::headersParse() {
	//main if, check to pars all headers
	if (_sBuffer.find(BODY_SEP) != std::string::npos) {
		size_t _headersEndPos = _sBuffer.find(BODY_SEP) + 4;
		for (size_t i = _sBuffer.find(CRLF) + 2;;) {
			std::string line = std::string(_sBuffer, i, _sBuffer.find(CRLF, i) - i);
			if (i + line.size() + 2 < _headersEndPos)
				i += line.size() + 2;
			else
				break;
			_headers.insert(getPair(line));
		}
		if (_headers["CONTENT-LENGTH"] != _headers.end()->second or _headers["TRANSFER-ENCODING"] == "chunked") {
				_parserState = ParserState::BODY;
				_bodyStart = _headersEndPos;
		}else {
			_parserState = ParserState::FINISHED;
		}
	}
}

void HttpRequest::bodyParse() {
	size_t bodyStart = _sBuffer.find(BODY_SEP) + 4;
	if (_headers["TRANSFER-ENCODING"] == "chunked") {
		std::cout << CYAN << "CHUNKED!!!" << RESET << std::endl;
		parseChunk(bodyStart);
	} else {
		parseContentWithLength(bodyStart);
	}
}


std::pair<std::string, std::string> HttpRequest::getPair(const std::string &line) {
	std::string key = std::string(line, 0, line.find(" ") - 1);
	std::string value = std::string(line, key.size() + 2, line.find(" "));
	for (int i = 0; i < key.size(); ++i) {
		key[i] = static_cast<char>(toupper(key[i]));
	}
	return std::pair<std::string, std::string>(key, value);
}

void HttpRequest::parseChunk(size_t bodyStart) {
	size_t endBody = 0;
	if ((endBody = _sBuffer.find("0\r\n\r\n", bodyStart)) != std::string::npos){
		_body.append(_sBuffer, bodyStart, (endBody - bodyStart + 3));
		//todo errors checker
		createChunkContainer();
		//concatenate chunks
		_body.clear();
		for (size_t i = 0; i < _chunk.size(); ++i) {
			_body.append(_chunk[i]->getBuffer(), 0, _chunk[i]->getIntSize());
		}
		std::cout << "body:\n" << _body << std::endl;
	}
}

void HttpRequest::parseContentWithLength(size_t  bodyStart) {
	size_t contentLength = 0;
	try {
		contentLength = std::stoi(_headers["CONTENT-LENGTH"]);
	} catch (std::exception &exception) {
		std::cerr << exception.what() << std::endl;
		_parserState = ParserState::FINISHED;
		return;
	}
	// todo check >= and set string(bodystart, contentLength)!
	if (_sBuffer.size() - bodyStart == contentLength) {
		_body = std::string(_sBuffer, bodyStart);
		_parserState = ParserState::FINISHED;
	}
}

void HttpRequest::createChunkContainer() {
	std::cout << "chunk:\n" << _body << std::endl;

	for (size_t i = 0; i < _body.size();) {
		size_t crlfPos = 0;
		_chunk.push_back(new ChunkedRequest());
		// read size chunk
		if ((crlfPos = _body.find(CRLF, i)) != std::string::npos) {
			if (!_chunk.back()->isSizeFull()) {
				_chunk.back()->setSize(std::string(_body, i, crlfPos - i));
				try {
					_chunk.back()->setSizeFull(true);
				} catch (std::exception &exception) {
					std::cerr << "Chunk size error!!!" << std::endl;
//					_parserState = ParserState::ERROR; TODO change this
					_parserState = ParserState::FINISHED;
					return;
				}
				if (_chunk.back()->getIntSize() == 0) {
					_chunk.back()->setBufferFull(true);
					_parserState = ParserState::FINISHED;
					return;
				}
				// + 2(CRLF), - i (position)
				i += crlfPos + 2 - i;
			}
		}
		// read buffer chunk
		if ((crlfPos = _body.find(CRLF, i)) != std::string::npos) {
			if (!_chunk.back()->isBufferFull()) {
				_chunk.back()->setBuffer(std::string(_body, i, _chunk.back()->getIntSize()));
				_chunk.back()->setBufferFull(true);
				i += _chunk.back()->getBuffer().size() + 2;
			}
		}
	}
}