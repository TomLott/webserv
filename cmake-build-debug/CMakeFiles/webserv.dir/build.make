# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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

#Suppress display of executed commands.
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
CMAKE_SOURCE_DIR = /Users/itollett/webserv1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/itollett/webserv1/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/webserv.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/webserv.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/webserv.dir/flags.make

CMakeFiles/webserv.dir/main.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/itollett/webserv1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/webserv.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/main.cpp.o -c /Users/itollett/webserv1/main.cpp

CMakeFiles/webserv.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/itollett/webserv1/main.cpp > CMakeFiles/webserv.dir/main.cpp.i

CMakeFiles/webserv.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/itollett/webserv1/main.cpp -o CMakeFiles/webserv.dir/main.cpp.s

CMakeFiles/webserv.dir/srcs/WebServer.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/WebServer.cpp.o: ../srcs/WebServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/itollett/webserv1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/webserv.dir/srcs/WebServer.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/WebServer.cpp.o -c /Users/itollett/webserv1/srcs/WebServer.cpp

CMakeFiles/webserv.dir/srcs/WebServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/WebServer.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/itollett/webserv1/srcs/WebServer.cpp > CMakeFiles/webserv.dir/srcs/WebServer.cpp.i

CMakeFiles/webserv.dir/srcs/WebServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/WebServer.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/itollett/webserv1/srcs/WebServer.cpp -o CMakeFiles/webserv.dir/srcs/WebServer.cpp.s

CMakeFiles/webserv.dir/srcs/Client.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/Client.cpp.o: ../srcs/Client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/itollett/webserv1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/webserv.dir/srcs/Client.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/Client.cpp.o -c /Users/itollett/webserv1/srcs/Client.cpp

CMakeFiles/webserv.dir/srcs/Client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/Client.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/itollett/webserv1/srcs/Client.cpp > CMakeFiles/webserv.dir/srcs/Client.cpp.i

CMakeFiles/webserv.dir/srcs/Client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/Client.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/itollett/webserv1/srcs/Client.cpp -o CMakeFiles/webserv.dir/srcs/Client.cpp.s

CMakeFiles/webserv.dir/srcs/Location.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/Location.cpp.o: ../srcs/Location.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/itollett/webserv1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/webserv.dir/srcs/Location.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/Location.cpp.o -c /Users/itollett/webserv1/srcs/Location.cpp

CMakeFiles/webserv.dir/srcs/Location.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/Location.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/itollett/webserv1/srcs/Location.cpp > CMakeFiles/webserv.dir/srcs/Location.cpp.i

CMakeFiles/webserv.dir/srcs/Location.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/Location.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/itollett/webserv1/srcs/Location.cpp -o CMakeFiles/webserv.dir/srcs/Location.cpp.s

CMakeFiles/webserv.dir/srcs/Server.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/Server.cpp.o: ../srcs/Server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/itollett/webserv1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/webserv.dir/srcs/Server.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/Server.cpp.o -c /Users/itollett/webserv1/srcs/Server.cpp

CMakeFiles/webserv.dir/srcs/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/Server.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/itollett/webserv1/srcs/Server.cpp > CMakeFiles/webserv.dir/srcs/Server.cpp.i

CMakeFiles/webserv.dir/srcs/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/Server.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/itollett/webserv1/srcs/Server.cpp -o CMakeFiles/webserv.dir/srcs/Server.cpp.s

CMakeFiles/webserv.dir/srcs/Parser.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/Parser.cpp.o: ../srcs/Parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/itollett/webserv1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/webserv.dir/srcs/Parser.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/Parser.cpp.o -c /Users/itollett/webserv1/srcs/Parser.cpp

CMakeFiles/webserv.dir/srcs/Parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/Parser.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/itollett/webserv1/srcs/Parser.cpp > CMakeFiles/webserv.dir/srcs/Parser.cpp.i

CMakeFiles/webserv.dir/srcs/Parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/Parser.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/itollett/webserv1/srcs/Parser.cpp -o CMakeFiles/webserv.dir/srcs/Parser.cpp.s

CMakeFiles/webserv.dir/srcs/HttpRequest.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/HttpRequest.cpp.o: ../srcs/HttpRequest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/itollett/webserv1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/webserv.dir/srcs/HttpRequest.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/HttpRequest.cpp.o -c /Users/itollett/webserv1/srcs/HttpRequest.cpp

CMakeFiles/webserv.dir/srcs/HttpRequest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/HttpRequest.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/itollett/webserv1/srcs/HttpRequest.cpp > CMakeFiles/webserv.dir/srcs/HttpRequest.cpp.i

CMakeFiles/webserv.dir/srcs/HttpRequest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/HttpRequest.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/itollett/webserv1/srcs/HttpRequest.cpp -o CMakeFiles/webserv.dir/srcs/HttpRequest.cpp.s

CMakeFiles/webserv.dir/srcs/HttpResponse.cpp.o: CMakeFiles/webserv.dir/flags.make
CMakeFiles/webserv.dir/srcs/HttpResponse.cpp.o: ../srcs/HttpResponse.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/itollett/webserv1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/webserv.dir/srcs/HttpResponse.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/srcs/HttpResponse.cpp.o -c /Users/itollett/webserv1/srcs/HttpResponse.cpp

CMakeFiles/webserv.dir/srcs/HttpResponse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/srcs/HttpResponse.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/itollett/webserv1/srcs/HttpResponse.cpp > CMakeFiles/webserv.dir/srcs/HttpResponse.cpp.i

CMakeFiles/webserv.dir/srcs/HttpResponse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/srcs/HttpResponse.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/itollett/webserv1/srcs/HttpResponse.cpp -o CMakeFiles/webserv.dir/srcs/HttpResponse.cpp.s

# Object files for target webserv
webserv_OBJECTS = \
"CMakeFiles/webserv.dir/main.cpp.o" \
"CMakeFiles/webserv.dir/srcs/WebServer.cpp.o" \
"CMakeFiles/webserv.dir/srcs/Client.cpp.o" \
"CMakeFiles/webserv.dir/srcs/Location.cpp.o" \
"CMakeFiles/webserv.dir/srcs/Server.cpp.o" \
"CMakeFiles/webserv.dir/srcs/Parser.cpp.o" \
"CMakeFiles/webserv.dir/srcs/HttpRequest.cpp.o" \
"CMakeFiles/webserv.dir/srcs/HttpResponse.cpp.o"

# External object files for target webserv
webserv_EXTERNAL_OBJECTS =

webserv: CMakeFiles/webserv.dir/main.cpp.o
webserv: CMakeFiles/webserv.dir/srcs/WebServer.cpp.o
webserv: CMakeFiles/webserv.dir/srcs/Client.cpp.o
webserv: CMakeFiles/webserv.dir/srcs/Location.cpp.o
webserv: CMakeFiles/webserv.dir/srcs/Server.cpp.o
webserv: CMakeFiles/webserv.dir/srcs/Parser.cpp.o
webserv: CMakeFiles/webserv.dir/srcs/HttpRequest.cpp.o
webserv: CMakeFiles/webserv.dir/srcs/HttpResponse.cpp.o
webserv: CMakeFiles/webserv.dir/build.make
webserv: CMakeFiles/webserv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/itollett/webserv1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable webserv"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/webserv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/webserv.dir/build: webserv

.PHONY : CMakeFiles/webserv.dir/build

CMakeFiles/webserv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/webserv.dir/cmake_clean.cmake
.PHONY : CMakeFiles/webserv.dir/clean

CMakeFiles/webserv.dir/depend:
	cd /Users/itollett/webserv1/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/itollett/webserv1 /Users/itollett/webserv1 /Users/itollett/webserv1/cmake-build-debug /Users/itollett/webserv1/cmake-build-debug /Users/itollett/webserv1/cmake-build-debug/CMakeFiles/webserv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/webserv.dir/depend

