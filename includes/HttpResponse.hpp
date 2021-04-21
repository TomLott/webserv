// CLion
// Created by Foster Grisella on 4/15/21 10:01.
//


#ifndef WEBSERV_HTTPRESPONSE_HPP
#define WEBSERV_HTTPRESPONSE_HPP

#include "Defines.hpp"
class Client;
class Server;
class CGI;
#include "../includes/HttpRequest.hpp"
#include "../includes/Client.hpp"
#include "../includes/Server.hpp"
#include "../includes/CGI.hpp"

#include <string>
#include <iostream>
#include <map>
#include <sstream>
#include <unistd.h>
#include <fcntl.h>
#include <ctime>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>



class HttpResponse {
public:
	HttpResponse();

	HttpResponse(const std::map<int, std::string> &statusMessages);

	std::string getCurrentDate() const;
	void generate(Client *client, Server *server);

	std::string & getStatusMessages(int n);
	void          setStatusMessages();

	virtual ~HttpResponse();

	HttpResponse(HttpResponse const &src);

	HttpResponse &operator=(HttpResponse const &src);

	std::string getPage(std::string &path, int isThereErrorPage);
	std::string createHeader(HttpRequest * req);
	void		setBody(std::string & body);

	const std::string &getToSend() const;

	void initResponse(HttpRequest *req, std::string &path, int isThereErrorPage);

	void clean();


	void checkFile(Location &ourLoc, std::string &mergedPath, struct stat *fileInfo);
	void createPutResponse(Client *client, Location *ourLoc, struct stat fileInfo, std::string &mergedPath);


private:
	std::string					_toSend;
	std::map<int, std::string>	_status_messages;
	std::string 			  	_body;
public:
	const std::string &getBody() const;

private:
	std::string 			    _headers_cgi;
	int  						_body_size;
	int 						_header_size;
	std::string					_error;
	int							_code;
	std::string					_buffer;
};


#endif //WEBSERV_HTTPRESPONSE_HPP
