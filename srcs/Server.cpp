// CLion
// Created by Foster Grisella on 4/13/21 15:11.
//


#include <fcntl.h>
#include "../includes/Server.hpp"

Server::Server(){
}

int Server::getSocketFd() const {
	return _socketFd;
}

void Server::setSocketFd(int socketFd) {
	_socketFd = socketFd;
}

const sockaddr_in &Server::getSocketAddr() const {
	return _socketAddr;
}

void Server::setSocketAddr(const sockaddr_in &socketAddr) {
	_socketAddr = socketAddr;
}

const std::string &Server::getHost() const {
	return _host;
}

void Server::setHost(const std::string &host) {
	_host = host;
}

void Server::setPort(const std::string & port) {
	try{
		_port = std::stoi(port);}
	catch (std::exception &e){
		std::cout << "Port setting error" << std::endl;
	}
}

void Server::setPort(uint16_t port) {
	_port = port;
}

const std::string &Server::getServerName() const {
	return _serverName;
}

void Server::setServerName(const std::string &serverName) {
	_serverName = serverName;
}

const std::map<std::string, Location> &Server::getLocation() const {
	return _location;
}

void Server::setLocation(const std::map<std::string, Location> &location) {
	_location = location;
}

const std::string &Server::getRoot() const {
	return _root;
}

void Server::setRoot(const std::string &root) {
	_root = root;
}

const std::string &Server::getErrorPage() const {
	return _errorPage;
}

void Server::setErrorPage(const std::string  &errorPage) {
	_errorPage = errorPage;
}

int Server::createSocket() {
	int listenFd;
	struct sockaddr_in servaddr;
	if ((listenFd = socket(PF_INET, SOCK_STREAM, 0)) < 0){
		std::cerr << "fatal error! socket!" << std::endl;
		return -1;
	}
	bzero(&servaddr, sizeof(servaddr));
	servaddr.sin_family = AF_INET;
	servaddr.sin_addr.s_addr = inet_addr(_host.c_str());
	servaddr.sin_port = htons(_port);
	int yes = 1;
	if (setsockopt(listenFd, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof(int)) == -1)
	{
		std::cerr << "error setsockopt" << std::endl;
		close(listenFd);
		return -2;
	}
	if ((bind(listenFd, (struct sockaddr * )&servaddr, sizeof servaddr)) < 0){
		std::cerr << "bind error" << std::endl;
		return -2;
	}
	if (fcntl(listenFd, F_SETFL, O_NONBLOCK) < 0) {
		std::cerr << "fcntl error" << std::endl;
		return -3;
	}
	if (listen(listenFd, 1024) < 0){ // todo delete magic number!
		std::cerr << "listen error!" << std::endl;
		return -4;
	}
	_socketFd = listenFd;
	_socketAddr = servaddr;
	return _socketFd;
}


Server::~Server() {
}

uint16_t Server::getPort() const {
	return _port;
}