# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.8.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.8.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/FLCL/Documents/University 2017/Robotics and Automation/OpenCV/Assignment 2/Test Project/OpenCV_Test/OpenCV_Test"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/FLCL/Documents/University 2017/Robotics and Automation/OpenCV/Assignment 2/Test Project/OpenCV_Test/OpenCV_Test"

# Include any dependencies generated for this target.
include CMakeFiles/a2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/a2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/a2.dir/flags.make

CMakeFiles/a2.dir/Main.cc.o: CMakeFiles/a2.dir/flags.make
CMakeFiles/a2.dir/Main.cc.o: Main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/FLCL/Documents/University 2017/Robotics and Automation/OpenCV/Assignment 2/Test Project/OpenCV_Test/OpenCV_Test/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/a2.dir/Main.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a2.dir/Main.cc.o -c "/Users/FLCL/Documents/University 2017/Robotics and Automation/OpenCV/Assignment 2/Test Project/OpenCV_Test/OpenCV_Test/Main.cc"

CMakeFiles/a2.dir/Main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a2.dir/Main.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/FLCL/Documents/University 2017/Robotics and Automation/OpenCV/Assignment 2/Test Project/OpenCV_Test/OpenCV_Test/Main.cc" > CMakeFiles/a2.dir/Main.cc.i

CMakeFiles/a2.dir/Main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a2.dir/Main.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/FLCL/Documents/University 2017/Robotics and Automation/OpenCV/Assignment 2/Test Project/OpenCV_Test/OpenCV_Test/Main.cc" -o CMakeFiles/a2.dir/Main.cc.s

CMakeFiles/a2.dir/Main.cc.o.requires:

.PHONY : CMakeFiles/a2.dir/Main.cc.o.requires

CMakeFiles/a2.dir/Main.cc.o.provides: CMakeFiles/a2.dir/Main.cc.o.requires
	$(MAKE) -f CMakeFiles/a2.dir/build.make CMakeFiles/a2.dir/Main.cc.o.provides.build
.PHONY : CMakeFiles/a2.dir/Main.cc.o.provides

CMakeFiles/a2.dir/Main.cc.o.provides.build: CMakeFiles/a2.dir/Main.cc.o


# Object files for target a2
a2_OBJECTS = \
"CMakeFiles/a2.dir/Main.cc.o"

# External object files for target a2
a2_EXTERNAL_OBJECTS =

a2: CMakeFiles/a2.dir/Main.cc.o
a2: CMakeFiles/a2.dir/build.make
a2: CMakeFiles/a2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/FLCL/Documents/University 2017/Robotics and Automation/OpenCV/Assignment 2/Test Project/OpenCV_Test/OpenCV_Test/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable a2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/a2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/a2.dir/build: a2

.PHONY : CMakeFiles/a2.dir/build

CMakeFiles/a2.dir/requires: CMakeFiles/a2.dir/Main.cc.o.requires

.PHONY : CMakeFiles/a2.dir/requires

CMakeFiles/a2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/a2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/a2.dir/clean

CMakeFiles/a2.dir/depend:
	cd "/Users/FLCL/Documents/University 2017/Robotics and Automation/OpenCV/Assignment 2/Test Project/OpenCV_Test/OpenCV_Test" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/FLCL/Documents/University 2017/Robotics and Automation/OpenCV/Assignment 2/Test Project/OpenCV_Test/OpenCV_Test" "/Users/FLCL/Documents/University 2017/Robotics and Automation/OpenCV/Assignment 2/Test Project/OpenCV_Test/OpenCV_Test" "/Users/FLCL/Documents/University 2017/Robotics and Automation/OpenCV/Assignment 2/Test Project/OpenCV_Test/OpenCV_Test" "/Users/FLCL/Documents/University 2017/Robotics and Automation/OpenCV/Assignment 2/Test Project/OpenCV_Test/OpenCV_Test" "/Users/FLCL/Documents/University 2017/Robotics and Automation/OpenCV/Assignment 2/Test Project/OpenCV_Test/OpenCV_Test/CMakeFiles/a2.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/a2.dir/depend

