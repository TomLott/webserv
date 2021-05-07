# Webserver - beautiful as nginx.

1) make
2) ./webserv
   second argument is optional. You can choose one of configuration files from "configs" folder.
   For example:
   ./webserv configs/default2.conf (Simple one-page website - http://localhost:8000)
   ./webserv configs/myconf.conf (Two servers http://localhost:8000, http://localhost:8080)
3) to test webserver use:
   - run program with default config (./webserv or  ./werbserv configs/default.conf)
   - bash resources/tester
   
