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
include CMakeFiles/example_server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/example_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/example_server.dir/flags.make

CMakeFiles/example_server.dir/server.cpp.o: CMakeFiles/example_server.dir/flags.make
CMakeFiles/example_server.dir/server.cpp.o: ../server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eleicha/Documents/DFKI/Code/OPCTest/examples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/example_server.dir/server.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_server.dir/server.cpp.o -c /home/eleicha/Documents/DFKI/Code/OPCTest/examples/server.cpp

CMakeFiles/example_server.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_server.dir/server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eleicha/Documents/DFKI/Code/OPCTest/examples/server.cpp > CMakeFiles/example_server.dir/server.cpp.i

CMakeFiles/example_server.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_server.dir/server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eleicha/Documents/DFKI/Code/OPCTest/examples/server.cpp -o CMakeFiles/example_server.dir/server.cpp.s

# Object files for target example_server
example_server_OBJECTS = \
"CMakeFiles/example_server.dir/server.cpp.o"

# External object files for target example_server
example_server_EXTERNAL_OBJECTS =

bin/examples/example_server: CMakeFiles/example_server.dir/server.cpp.o
bin/examples/example_server: CMakeFiles/example_server.dir/build.make
bin/examples/example_server: /usr/local/lib/libopen62541.so.0.0.0
bin/examples/example_server: CMakeFiles/example_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/eleicha/Documents/DFKI/Code/OPCTest/examples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/examples/example_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/example_server.dir/build: bin/examples/example_server

.PHONY : CMakeFiles/example_server.dir/build

CMakeFiles/example_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/example_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/example_server.dir/clean

CMakeFiles/example_server.dir/depend:
	cd /home/eleicha/Documents/DFKI/Code/OPCTest/examples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eleicha/Documents/DFKI/Code/OPCTest/examples /home/eleicha/Documents/DFKI/Code/OPCTest/examples /home/eleicha/Documents/DFKI/Code/OPCTest/examples/build /home/eleicha/Documents/DFKI/Code/OPCTest/examples/build /home/eleicha/Documents/DFKI/Code/OPCTest/examples/build/CMakeFiles/example_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/example_server.dir/depend

