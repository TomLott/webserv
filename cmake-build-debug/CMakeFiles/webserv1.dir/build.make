# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/fgrisell/CLionProjects/webserv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/fgrisell/CLionProjects/webserv/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/webserv1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/webserv1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/webserv1.dir/flags.make

CMakeFiles/webserv1.dir/main.cpp.o: CMakeFiles/webserv1.dir/flags.make
CMakeFiles/webserv1.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fgrisell/CLionProjects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/webserv1.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv1.dir/main.cpp.o -c /Users/fgrisell/CLionProjects/webserv/main.cpp

CMakeFiles/webserv1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv1.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fgrisell/CLionProjects/webserv/main.cpp > CMakeFiles/webserv1.dir/main.cpp.i

CMakeFiles/webserv1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv1.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fgrisell/CLionProjects/webserv/main.cpp -o CMakeFiles/webserv1.dir/main.cpp.s

CMakeFiles/webserv1.dir/srcs/WebServer.cpp.o: CMakeFiles/webserv1.dir/flags.make
CMakeFiles/webserv1.dir/srcs/WebServer.cpp.o: ../srcs/WebServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fgrisell/CLionProjects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/webserv1.dir/srcs/WebServer.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv1.dir/srcs/WebServer.cpp.o -c /Users/fgrisell/CLionProjects/webserv/srcs/WebServer.cpp

CMakeFiles/webserv1.dir/srcs/WebServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv1.dir/srcs/WebServer.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fgrisell/CLionProjects/webserv/srcs/WebServer.cpp > CMakeFiles/webserv1.dir/srcs/WebServer.cpp.i

CMakeFiles/webserv1.dir/srcs/WebServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv1.dir/srcs/WebServer.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fgrisell/CLionProjects/webserv/srcs/WebServer.cpp -o CMakeFiles/webserv1.dir/srcs/WebServer.cpp.s

CMakeFiles/webserv1.dir/srcs/Client.cpp.o: CMakeFiles/webserv1.dir/flags.make
CMakeFiles/webserv1.dir/srcs/Client.cpp.o: ../srcs/Client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fgrisell/CLionProjects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/webserv1.dir/srcs/Client.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv1.dir/srcs/Client.cpp.o -c /Users/fgrisell/CLionProjects/webserv/srcs/Client.cpp

CMakeFiles/webserv1.dir/srcs/Client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv1.dir/srcs/Client.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fgrisell/CLionProjects/webserv/srcs/Client.cpp > CMakeFiles/webserv1.dir/srcs/Client.cpp.i

CMakeFiles/webserv1.dir/srcs/Client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv1.dir/srcs/Client.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fgrisell/CLionProjects/webserv/srcs/Client.cpp -o CMakeFiles/webserv1.dir/srcs/Client.cpp.s

CMakeFiles/webserv1.dir/srcs/Location.cpp.o: CMakeFiles/webserv1.dir/flags.make
CMakeFiles/webserv1.dir/srcs/Location.cpp.o: ../srcs/Location.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fgrisell/CLionProjects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/webserv1.dir/srcs/Location.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv1.dir/srcs/Location.cpp.o -c /Users/fgrisell/CLionProjects/webserv/srcs/Location.cpp

CMakeFiles/webserv1.dir/srcs/Location.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv1.dir/srcs/Location.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fgrisell/CLionProjects/webserv/srcs/Location.cpp > CMakeFiles/webserv1.dir/srcs/Location.cpp.i

CMakeFiles/webserv1.dir/srcs/Location.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv1.dir/srcs/Location.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fgrisell/CLionProjects/webserv/srcs/Location.cpp -o CMakeFiles/webserv1.dir/srcs/Location.cpp.s

CMakeFiles/webserv1.dir/srcs/Server.cpp.o: CMakeFiles/webserv1.dir/flags.make
CMakeFiles/webserv1.dir/srcs/Server.cpp.o: ../srcs/Server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fgrisell/CLionProjects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/webserv1.dir/srcs/Server.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv1.dir/srcs/Server.cpp.o -c /Users/fgrisell/CLionProjects/webserv/srcs/Server.cpp

CMakeFiles/webserv1.dir/srcs/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv1.dir/srcs/Server.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fgrisell/CLionProjects/webserv/srcs/Server.cpp > CMakeFiles/webserv1.dir/srcs/Server.cpp.i

CMakeFiles/webserv1.dir/srcs/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv1.dir/srcs/Server.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fgrisell/CLionProjects/webserv/srcs/Server.cpp -o CMakeFiles/webserv1.dir/srcs/Server.cpp.s

CMakeFiles/webserv1.dir/srcs/Parser.cpp.o: CMakeFiles/webserv1.dir/flags.make
CMakeFiles/webserv1.dir/srcs/Parser.cpp.o: ../srcs/Parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fgrisell/CLionProjects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/webserv1.dir/srcs/Parser.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv1.dir/srcs/Parser.cpp.o -c /Users/fgrisell/CLionProjects/webserv/srcs/Parser.cpp

CMakeFiles/webserv1.dir/srcs/Parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv1.dir/srcs/Parser.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fgrisell/CLionProjects/webserv/srcs/Parser.cpp > CMakeFiles/webserv1.dir/srcs/Parser.cpp.i

CMakeFiles/webserv1.dir/srcs/Parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv1.dir/srcs/Parser.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fgrisell/CLionProjects/webserv/srcs/Parser.cpp -o CMakeFiles/webserv1.dir/srcs/Parser.cpp.s

CMakeFiles/webserv1.dir/srcs/HttpRequest.cpp.o: CMakeFiles/webserv1.dir/flags.make
CMakeFiles/webserv1.dir/srcs/HttpRequest.cpp.o: ../srcs/HttpRequest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fgrisell/CLionProjects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/webserv1.dir/srcs/HttpRequest.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv1.dir/srcs/HttpRequest.cpp.o -c /Users/fgrisell/CLionProjects/webserv/srcs/HttpRequest.cpp

CMakeFiles/webserv1.dir/srcs/HttpRequest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv1.dir/srcs/HttpRequest.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fgrisell/CLionProjects/webserv/srcs/HttpRequest.cpp > CMakeFiles/webserv1.dir/srcs/HttpRequest.cpp.i

CMakeFiles/webserv1.dir/srcs/HttpRequest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv1.dir/srcs/HttpRequest.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fgrisell/CLionProjects/webserv/srcs/HttpRequest.cpp -o CMakeFiles/webserv1.dir/srcs/HttpRequest.cpp.s

CMakeFiles/webserv1.dir/srcs/HttpResponse.cpp.o: CMakeFiles/webserv1.dir/flags.make
CMakeFiles/webserv1.dir/srcs/HttpResponse.cpp.o: ../srcs/HttpResponse.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fgrisell/CLionProjects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/webserv1.dir/srcs/HttpResponse.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv1.dir/srcs/HttpResponse.cpp.o -c /Users/fgrisell/CLionProjects/webserv/srcs/HttpResponse.cpp

CMakeFiles/webserv1.dir/srcs/HttpResponse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv1.dir/srcs/HttpResponse.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fgrisell/CLionProjects/webserv/srcs/HttpResponse.cpp > CMakeFiles/webserv1.dir/srcs/HttpResponse.cpp.i

CMakeFiles/webserv1.dir/srcs/HttpResponse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv1.dir/srcs/HttpResponse.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fgrisell/CLionProjects/webserv/srcs/HttpResponse.cpp -o CMakeFiles/webserv1.dir/srcs/HttpResponse.cpp.s

# Object files for target webserv1
webserv1_OBJECTS = \
"CMakeFiles/webserv1.dir/main.cpp.o" \
"CMakeFiles/webserv1.dir/srcs/WebServer.cpp.o" \
"CMakeFiles/webserv1.dir/srcs/Client.cpp.o" \
"CMakeFiles/webserv1.dir/srcs/Location.cpp.o" \
"CMakeFiles/webserv1.dir/srcs/Server.cpp.o" \
"CMakeFiles/webserv1.dir/srcs/Parser.cpp.o" \
"CMakeFiles/webserv1.dir/srcs/HttpRequest.cpp.o" \
"CMakeFiles/webserv1.dir/srcs/HttpResponse.cpp.o"

# External object files for target webserv1
webserv1_EXTERNAL_OBJECTS =

webserv1: CMakeFiles/webserv1.dir/main.cpp.o
webserv1: CMakeFiles/webserv1.dir/srcs/WebServer.cpp.o
webserv1: CMakeFiles/webserv1.dir/srcs/Client.cpp.o
webserv1: CMakeFiles/webserv1.dir/srcs/Location.cpp.o
webserv1: CMakeFiles/webserv1.dir/srcs/Server.cpp.o
webserv1: CMakeFiles/webserv1.dir/srcs/Parser.cpp.o
webserv1: CMakeFiles/webserv1.dir/srcs/HttpRequest.cpp.o
webserv1: CMakeFiles/webserv1.dir/srcs/HttpResponse.cpp.o
webserv1: CMakeFiles/webserv1.dir/build.make
webserv1: CMakeFiles/webserv1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/fgrisell/CLionProjects/webserv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable webserv1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/webserv1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/webserv1.dir/build: webserv1

.PHONY : CMakeFiles/webserv1.dir/build

CMakeFiles/webserv1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/webserv1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/webserv1.dir/clean

CMakeFiles/webserv1.dir/depend:
	cd /Users/fgrisell/CLionProjects/webserv/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/fgrisell/CLionProjects/webserv /Users/fgrisell/CLionProjects/webserv /Users/fgrisell/CLionProjects/webserv/cmake-build-debug /Users/fgrisell/CLionProjects/webserv/cmake-build-debug /Users/fgrisell/CLionProjects/webserv/cmake-build-debug/CMakeFiles/webserv1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/webserv1.dir/depend

