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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/eleicha/Documents/DFKI/Code/OPCTest/examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eleicha/Documents/DFKI/Code/OPCTest/examples/build

# Include any dependencies generated for this target.
include CMakeFiles/historical_server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/historical_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/historical_server.dir/flags.make

CMakeFiles/historical_server.dir/tutorial_server_historicaldata.cpp.o: CMakeFiles/historical_server.dir/flags.make
CMakeFiles/historical_server.dir/tutorial_server_historicaldata.cpp.o: ../tutorial_server_historicaldata.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eleicha/Documents/DFKI/Code/OPCTest/examples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/historical_server.dir/tutorial_server_historicaldata.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/historical_server.dir/tutorial_server_historicaldata.cpp.o -c /home/eleicha/Documents/DFKI/Code/OPCTest/examples/tutorial_server_historicaldata.cpp

CMakeFiles/historical_server.dir/tutorial_server_historicaldata.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/historical_server.dir/tutorial_server_historicaldata.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eleicha/Documents/DFKI/Code/OPCTest/examples/tutorial_server_historicaldata.cpp > CMakeFiles/historical_server.dir/tutorial_server_historicaldata.cpp.i

CMakeFiles/historical_server.dir/tutorial_server_historicaldata.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/historical_server.dir/tutorial_server_historicaldata.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eleicha/Documents/DFKI/Code/OPCTest/examples/tutorial_server_historicaldata.cpp -o CMakeFiles/historical_server.dir/tutorial_server_historicaldata.cpp.s

# Object files for target historical_server
historical_server_OBJECTS = \
"CMakeFiles/historical_server.dir/tutorial_server_historicaldata.cpp.o"

# External object files for target historical_server
historical_server_EXTERNAL_OBJECTS =

bin/examples/historical_server: CMakeFiles/historical_server.dir/tutorial_server_historicaldata.cpp.o
bin/examples/historical_server: CMakeFiles/historical_server.dir/build.make
bin/examples/historical_server: /usr/local/lib/libopen62541.so.0.0.0
bin/examples/historical_server: CMakeFiles/historical_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/eleicha/Documents/DFKI/Code/OPCTest/examples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/examples/historical_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/historical_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/historical_server.dir/build: bin/examples/historical_server

.PHONY : CMakeFiles/historical_server.dir/build

CMakeFiles/historical_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/historical_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/historical_server.dir/clean

CMakeFiles/historical_server.dir/depend:
	cd /home/eleicha/Documents/DFKI/Code/OPCTest/examples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eleicha/Documents/DFKI/Code/OPCTest/examples /home/eleicha/Documents/DFKI/Code/OPCTest/examples /home/eleicha/Documents/DFKI/Code/OPCTest/examples/build /home/eleicha/Documents/DFKI/Code/OPCTest/examples/build /home/eleicha/Documents/DFKI/Code/OPCTest/examples/build/CMakeFiles/historical_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/historical_server.dir/depend

