# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /home/tristan/Documents/clion-2017.2.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/tristan/Documents/clion-2017.2.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tristan/GitHubFolder/MtoStringConv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tristan/GitHubFolder/MtoStringConv/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/MtoStringConv.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MtoStringConv.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MtoStringConv.dir/flags.make

CMakeFiles/MtoStringConv.dir/main.cpp.o: CMakeFiles/MtoStringConv.dir/flags.make
CMakeFiles/MtoStringConv.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tristan/GitHubFolder/MtoStringConv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MtoStringConv.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MtoStringConv.dir/main.cpp.o -c /home/tristan/GitHubFolder/MtoStringConv/main.cpp

CMakeFiles/MtoStringConv.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MtoStringConv.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tristan/GitHubFolder/MtoStringConv/main.cpp > CMakeFiles/MtoStringConv.dir/main.cpp.i

CMakeFiles/MtoStringConv.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MtoStringConv.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tristan/GitHubFolder/MtoStringConv/main.cpp -o CMakeFiles/MtoStringConv.dir/main.cpp.s

CMakeFiles/MtoStringConv.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/MtoStringConv.dir/main.cpp.o.requires

CMakeFiles/MtoStringConv.dir/main.cpp.o.provides: CMakeFiles/MtoStringConv.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/MtoStringConv.dir/build.make CMakeFiles/MtoStringConv.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/MtoStringConv.dir/main.cpp.o.provides

CMakeFiles/MtoStringConv.dir/main.cpp.o.provides.build: CMakeFiles/MtoStringConv.dir/main.cpp.o


CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.o: CMakeFiles/MtoStringConv.dir/flags.make
CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.o: ../ImageConverter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tristan/GitHubFolder/MtoStringConv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.o -c /home/tristan/GitHubFolder/MtoStringConv/ImageConverter.cpp

CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tristan/GitHubFolder/MtoStringConv/ImageConverter.cpp > CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.i

CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tristan/GitHubFolder/MtoStringConv/ImageConverter.cpp -o CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.s

CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.o.requires:

.PHONY : CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.o.requires

CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.o.provides: CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.o.requires
	$(MAKE) -f CMakeFiles/MtoStringConv.dir/build.make CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.o.provides.build
.PHONY : CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.o.provides

CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.o.provides.build: CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.o


# Object files for target MtoStringConv
MtoStringConv_OBJECTS = \
"CMakeFiles/MtoStringConv.dir/main.cpp.o" \
"CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.o"

# External object files for target MtoStringConv
MtoStringConv_EXTERNAL_OBJECTS =

MtoStringConv: CMakeFiles/MtoStringConv.dir/main.cpp.o
MtoStringConv: CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.o
MtoStringConv: CMakeFiles/MtoStringConv.dir/build.make
MtoStringConv: CMakeFiles/MtoStringConv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tristan/GitHubFolder/MtoStringConv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable MtoStringConv"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MtoStringConv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MtoStringConv.dir/build: MtoStringConv

.PHONY : CMakeFiles/MtoStringConv.dir/build

CMakeFiles/MtoStringConv.dir/requires: CMakeFiles/MtoStringConv.dir/main.cpp.o.requires
CMakeFiles/MtoStringConv.dir/requires: CMakeFiles/MtoStringConv.dir/ImageConverter.cpp.o.requires

.PHONY : CMakeFiles/MtoStringConv.dir/requires

CMakeFiles/MtoStringConv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MtoStringConv.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MtoStringConv.dir/clean

CMakeFiles/MtoStringConv.dir/depend:
	cd /home/tristan/GitHubFolder/MtoStringConv/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tristan/GitHubFolder/MtoStringConv /home/tristan/GitHubFolder/MtoStringConv /home/tristan/GitHubFolder/MtoStringConv/cmake-build-debug /home/tristan/GitHubFolder/MtoStringConv/cmake-build-debug /home/tristan/GitHubFolder/MtoStringConv/cmake-build-debug/CMakeFiles/MtoStringConv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MtoStringConv.dir/depend

