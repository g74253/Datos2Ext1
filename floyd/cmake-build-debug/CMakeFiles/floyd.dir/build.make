# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/gretchell/Downloads/clion-2019.3.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/gretchell/Downloads/clion-2019.3.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gretchell/CLionProjects/floyd

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gretchell/CLionProjects/floyd/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/floyd.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/floyd.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/floyd.dir/flags.make

CMakeFiles/floyd.dir/main.cpp.o: CMakeFiles/floyd.dir/flags.make
CMakeFiles/floyd.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gretchell/CLionProjects/floyd/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/floyd.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/floyd.dir/main.cpp.o -c /home/gretchell/CLionProjects/floyd/main.cpp

CMakeFiles/floyd.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/floyd.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gretchell/CLionProjects/floyd/main.cpp > CMakeFiles/floyd.dir/main.cpp.i

CMakeFiles/floyd.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/floyd.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gretchell/CLionProjects/floyd/main.cpp -o CMakeFiles/floyd.dir/main.cpp.s

# Object files for target floyd
floyd_OBJECTS = \
"CMakeFiles/floyd.dir/main.cpp.o"

# External object files for target floyd
floyd_EXTERNAL_OBJECTS =

floyd: CMakeFiles/floyd.dir/main.cpp.o
floyd: CMakeFiles/floyd.dir/build.make
floyd: CMakeFiles/floyd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gretchell/CLionProjects/floyd/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable floyd"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/floyd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/floyd.dir/build: floyd

.PHONY : CMakeFiles/floyd.dir/build

CMakeFiles/floyd.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/floyd.dir/cmake_clean.cmake
.PHONY : CMakeFiles/floyd.dir/clean

CMakeFiles/floyd.dir/depend:
	cd /home/gretchell/CLionProjects/floyd/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gretchell/CLionProjects/floyd /home/gretchell/CLionProjects/floyd /home/gretchell/CLionProjects/floyd/cmake-build-debug /home/gretchell/CLionProjects/floyd/cmake-build-debug /home/gretchell/CLionProjects/floyd/cmake-build-debug/CMakeFiles/floyd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/floyd.dir/depend

