# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ananas/CLionProjects/Hyperion

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ananas/CLionProjects/Hyperion/cmake-build-debug

# Include any dependencies generated for this target.
include cli/CMakeFiles/hyperion_cli.dir/depend.make

# Include the progress variables for this target.
include cli/CMakeFiles/hyperion_cli.dir/progress.make

# Include the compile flags for this target's objects.
include cli/CMakeFiles/hyperion_cli.dir/flags.make

cli/CMakeFiles/hyperion_cli.dir/main.cpp.o: cli/CMakeFiles/hyperion_cli.dir/flags.make
cli/CMakeFiles/hyperion_cli.dir/main.cpp.o: ../cli/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ananas/CLionProjects/Hyperion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object cli/CMakeFiles/hyperion_cli.dir/main.cpp.o"
	cd /home/ananas/CLionProjects/Hyperion/cmake-build-debug/cli && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hyperion_cli.dir/main.cpp.o -c /home/ananas/CLionProjects/Hyperion/cli/main.cpp

cli/CMakeFiles/hyperion_cli.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hyperion_cli.dir/main.cpp.i"
	cd /home/ananas/CLionProjects/Hyperion/cmake-build-debug/cli && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ananas/CLionProjects/Hyperion/cli/main.cpp > CMakeFiles/hyperion_cli.dir/main.cpp.i

cli/CMakeFiles/hyperion_cli.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hyperion_cli.dir/main.cpp.s"
	cd /home/ananas/CLionProjects/Hyperion/cmake-build-debug/cli && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ananas/CLionProjects/Hyperion/cli/main.cpp -o CMakeFiles/hyperion_cli.dir/main.cpp.s

cli/CMakeFiles/hyperion_cli.dir/main.cpp.o.requires:

.PHONY : cli/CMakeFiles/hyperion_cli.dir/main.cpp.o.requires

cli/CMakeFiles/hyperion_cli.dir/main.cpp.o.provides: cli/CMakeFiles/hyperion_cli.dir/main.cpp.o.requires
	$(MAKE) -f cli/CMakeFiles/hyperion_cli.dir/build.make cli/CMakeFiles/hyperion_cli.dir/main.cpp.o.provides.build
.PHONY : cli/CMakeFiles/hyperion_cli.dir/main.cpp.o.provides

cli/CMakeFiles/hyperion_cli.dir/main.cpp.o.provides.build: cli/CMakeFiles/hyperion_cli.dir/main.cpp.o


# Object files for target hyperion_cli
hyperion_cli_OBJECTS = \
"CMakeFiles/hyperion_cli.dir/main.cpp.o"

# External object files for target hyperion_cli
hyperion_cli_EXTERNAL_OBJECTS =

hyperion_cli: cli/CMakeFiles/hyperion_cli.dir/main.cpp.o
hyperion_cli: cli/CMakeFiles/hyperion_cli.dir/build.make
hyperion_cli: utils/libutils.a
hyperion_cli: cli/CMakeFiles/hyperion_cli.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ananas/CLionProjects/Hyperion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../hyperion_cli"
	cd /home/ananas/CLionProjects/Hyperion/cmake-build-debug/cli && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hyperion_cli.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
cli/CMakeFiles/hyperion_cli.dir/build: hyperion_cli

.PHONY : cli/CMakeFiles/hyperion_cli.dir/build

cli/CMakeFiles/hyperion_cli.dir/requires: cli/CMakeFiles/hyperion_cli.dir/main.cpp.o.requires

.PHONY : cli/CMakeFiles/hyperion_cli.dir/requires

cli/CMakeFiles/hyperion_cli.dir/clean:
	cd /home/ananas/CLionProjects/Hyperion/cmake-build-debug/cli && $(CMAKE_COMMAND) -P CMakeFiles/hyperion_cli.dir/cmake_clean.cmake
.PHONY : cli/CMakeFiles/hyperion_cli.dir/clean

cli/CMakeFiles/hyperion_cli.dir/depend:
	cd /home/ananas/CLionProjects/Hyperion/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ananas/CLionProjects/Hyperion /home/ananas/CLionProjects/Hyperion/cli /home/ananas/CLionProjects/Hyperion/cmake-build-debug /home/ananas/CLionProjects/Hyperion/cmake-build-debug/cli /home/ananas/CLionProjects/Hyperion/cmake-build-debug/cli/CMakeFiles/hyperion_cli.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : cli/CMakeFiles/hyperion_cli.dir/depend

