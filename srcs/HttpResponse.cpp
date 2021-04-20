// CLion
// Created by Foster Grisella on 4/15/21 10:01.
//


#include "../includes/HttpResponse.hpp"
#include "../includes/Client.hpp"
#include <sys/time.h>


HttpResponse::HttpResponse(){
	setStatusMessages();
	_error = "";
	_body = "";
	_buffer = "";
	_header_size = 0;
	_body_size = 0;
	_code = 0;
}

HttpResponse::~HttpResponse() {

}


// what generate need???


/**
 * todo check this 
 * void HttpResponse::generate(HttpRequest *&request) ???
 * or
 * void HttpResponse::generate(Client *&pClient) ???
 *
 */

bool checkMethod(std::vector<std::string> vec, std::string meth){
	for (size_t i = 0; i < vec.size(); ++i){
		if (meth == vec[i])
			return (true);
	}
	return (false);
}

void HttpResponse::checkFile(Location &ourLoc, std::string &mergedPath, struct stat *fileInfo){
	int fd = 0;

	/** Checking access mode */
	if (S_ISDIR(fileInfo->st_mode)){
		if (!ourLoc.getIndex().empty()) { mergedPath = mergedPath + '/' + ourLoc.getIndex(); }
		if (!(fd = open(mergedPath.c_str(), O_RDONLY))) { std::cout << "File openning error" << std::endl;}
		close(fd);
		stat(mergedPath.c_str(), fileInfo);
	}
	else{	std::cout << "File access error" << std::endl; }
}

void HttpResponse::createPutResponse(Client *client, Location *ourLoc, struct stat fileInfo, std::string &mergedPath){
	int fd = 0;

	if (S_ISDIR(fileInfo.st_mode)){
		_code = 404;
	}
	fd = open(mergedPath, O_RDWR |
}

void HttpResponse::generate(Client *client, Server *server) {
/*	size_t strBuf;
	char *buffer = (char *)calloc(BUFSIZE, sizeof (char));
	strBuf = strlen(buffer);
	_toSend.append("HTTP/1.1 200 OK\n");
	_toSend.append("Server: obserVER\n");
	_toSend.append("Content-Length: 5\n");
	_toSend.append("Connection: Keep-Alive\r\n\r\n");

	_toSend.append("a\r\n\r\n");
	_toSend.append(buffer);
	std::cout << "toSend = " << _toSend << std::endl;

	free(buffer);
	initResponse();*/
	struct stat fileInfo;

	std::string path = client->getRequest()->getPath();
	std::map<std::string, Location>::const_iterator it;
	it = server->getLocation().find(path);


	_code = 200;


	if (it == server->getLocation().end()) {_code = 404;}
	Location ourLoc = it->second;
	std::string locName = it->first;

	if (!checkMethod(ourLoc.getAllowMethods(), client->getRequest()->getMethod())){ _code = 405;	}

	std::string root = ourLoc.getRoot();
	if (root[root.size() - 1] == '/')
		root.erase(root.size() - 1, 1);

	std::string mergedPath = root;
	if (locName[0] != '/'){	locName = "";}
	mergedPath = root + '/' + locName;

	if (ourLoc.getClientMaxBodySize() > _body_size){ _code = 413;}

	stat(mergedPath.c_str(), &fileInfo);

	if (_code != 200){

	}
	else{
		checkFile(ourLoc, mergedPath, &fileInfo);
		if (client->getRequest()->getMethod() == "POST"){
			if (!ourLoc.getCgiPath().empty()){
				std::cout << "---CGI---" << std::endl;
				std::string cgi = ourLoc.getCgiPath();
				if (cgi.find(".php", 0, 4) != std::string::npos){
					int i = 4;
					for (; i < cgi.size() && (cgi[i] == ' ' || cgi[i] == '\t'); ++i);
					std::string temp = cgi.substr(i, cgi.size() - i);
					CGI newCGI(client, temp.c_str());
				}
			}
			else{
				createPutResponse(client, &ourLoc, fileInfo, mergedPath);
			}
		}
	}

}

void HttpResponse::setStatusMessages() {
	_status_messages[100] = "Continue";
	_status_messages[101] = "Switching Protocols";
	_status_messages[102] = "Processing";
	_status_messages[103] = "Early Hints";
	_status_messages[200] = "OK";
	_status_messages[201] = "Created";
	_status_messages[202] = "Accepted";
	_status_messages[203] = "Non-Authoritative Information";
	_status_messages[204] = "No Content";
	_status_messages[205] = "Reset Content";
	_status_messages[206] = "Partial content";
	_status_messages[207] = "Multy-Status";
	_status_messages[300] = "Multiple Choices";
	_status_messages[301] = "Moved Permanently";
	_status_messages[302] = "Mover Temporary";
	_status_messages[307] = "Temporary Redirect";
	_status_messages[308] = "Permanent Redirect";
	_status_messages[400] = "Bad Request";
	_status_messages[401] = "Unauthorized";
	_status_messages[403] = "Forbidden";
	_status_messages[404] = "Not Found";
	_status_messages[405] = "Method Not Allowed";
	_status_messages[406] = "Not Acceptable";
	_status_messages[411] = "Length Required";
	_status_messages[413] = "Rayload Too Large";
	_status_messages[500] = "Internal Server Error";
	_status_messages[501] = "Not Implemented";
}

std::string & HttpResponse::getStatusMessages(int n) {
	std::map<int, std::string>::iterator it = _status_messages.find(n);
	if (it == _status_messages.end())
		return (std::string &) ("Unknown");
	return (it->second);
}

std::string HttpResponse::getPage(std::string &path, int isThereErrorPage) {
	std::stringstream buf;
	if (isThereErrorPage >= 0){
		char temp;
		int cor_fd = open(path.c_str(), O_RDONLY);
		if (!cor_fd)
			throw std::runtime_error("Can't open file");
		while(read(cor_fd, &temp, 1) > 0){
			buf << temp;
		}
		close(cor_fd);
	}
	else{
		/** If there is no error page*/
		buf << "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\n"
			   "<html>\n"
			   " <head>\n"
			   "  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\n"
			   "  <title>Пример веб-страницы</title>\n"
			   " </head>\n"
			   " <body>\n"
			   "  <h1>" << getStatusMessages(_code) <<"</h1>\n"
													 " <h2>" << _code << "</h2>\n"
																		" </body>\n"
																		"</html>";
	}
	return (buf.str());
}

std::string HttpResponse::createHeader(HttpRequest *req) {
	std::stringstream header;

	header << "HTTP/1.1 " << _code << " " << getStatusMessages(_code) << CRLF <<
		   "Date: " << getCurrentDate() << CRLF <<
		   "Server: " << "KiRoTa/0.1" << CRLF <<
		   "Content-type: " << req->getContentType() << CRLF <<
		   "Content-Length: " << _body_size;
	return (header.str());
}

void HttpResponse::setBody(std::string &body) {
	_body = body;
}


void HttpResponse::initResponse(HttpRequest *req, std::string &path, int isThereErrorPage) {
	std::string head;
	_body = getPage(path, isThereErrorPage);
	_body_size = _body.length();
	head = createHeader(req);
	_toSend.append(head);
	_toSend.append("\r\n\r\n");
	_toSend.append(_body);
	_toSend.append("\r\n\r\n");
}

std::string HttpResponse::getCurrentDate() const {

	std::string date;
	time_t rawtime;
	time(&rawtime);
	date = ctime(&rawtime);
	return date;
}

const std::string &HttpResponse::getToSend() const {
	return _toSend;
}

void HttpResponse::clean() {
	_toSend.clear();
}

const std::string &HttpResponse::getBody() const {
	return _body;
}

