# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/build

# Include any dependencies generated for this target.
include cpp_turtle/CMakeFiles/cpp_turtle.dir/depend.make

# Include the progress variables for this target.
include cpp_turtle/CMakeFiles/cpp_turtle.dir/progress.make

# Include the compile flags for this target's objects.
include cpp_turtle/CMakeFiles/cpp_turtle.dir/flags.make

cpp_turtle/CMakeFiles/cpp_turtle.dir/src/counter.cpp.o: cpp_turtle/CMakeFiles/cpp_turtle.dir/flags.make
cpp_turtle/CMakeFiles/cpp_turtle.dir/src/counter.cpp.o: /home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/src/cpp_turtle/src/counter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object cpp_turtle/CMakeFiles/cpp_turtle.dir/src/counter.cpp.o"
	cd /home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/build/cpp_turtle && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpp_turtle.dir/src/counter.cpp.o -c /home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/src/cpp_turtle/src/counter.cpp

cpp_turtle/CMakeFiles/cpp_turtle.dir/src/counter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp_turtle.dir/src/counter.cpp.i"
	cd /home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/build/cpp_turtle && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/src/cpp_turtle/src/counter.cpp > CMakeFiles/cpp_turtle.dir/src/counter.cpp.i

cpp_turtle/CMakeFiles/cpp_turtle.dir/src/counter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp_turtle.dir/src/counter.cpp.s"
	cd /home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/build/cpp_turtle && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/src/cpp_turtle/src/counter.cpp -o CMakeFiles/cpp_turtle.dir/src/counter.cpp.s

# Object files for target cpp_turtle
cpp_turtle_OBJECTS = \
"CMakeFiles/cpp_turtle.dir/src/counter.cpp.o"

# External object files for target cpp_turtle
cpp_turtle_EXTERNAL_OBJECTS =

/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle: cpp_turtle/CMakeFiles/cpp_turtle.dir/src/counter.cpp.o
/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle: cpp_turtle/CMakeFiles/cpp_turtle.dir/build.make
/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle: /opt/ros/noetic/lib/libroscpp.so
/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle: /opt/ros/noetic/lib/librosconsole.so
/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle: /opt/ros/noetic/lib/librostime.so
/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle: /opt/ros/noetic/lib/libcpp_common.so
/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle: cpp_turtle/CMakeFiles/cpp_turtle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle"
	cd /home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/build/cpp_turtle && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpp_turtle.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
cpp_turtle/CMakeFiles/cpp_turtle.dir/build: /home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/devel/lib/cpp_turtle/cpp_turtle

.PHONY : cpp_turtle/CMakeFiles/cpp_turtle.dir/build

cpp_turtle/CMakeFiles/cpp_turtle.dir/clean:
	cd /home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/build/cpp_turtle && $(CMAKE_COMMAND) -P CMakeFiles/cpp_turtle.dir/cmake_clean.cmake
.PHONY : cpp_turtle/CMakeFiles/cpp_turtle.dir/clean

cpp_turtle/CMakeFiles/cpp_turtle.dir/depend:
	cd /home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/src /home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/src/cpp_turtle /home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/build /home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/build/cpp_turtle /home/marcos/projects/ROS/robot_operating_system-ROS/project_final/catkin_ws/build/cpp_turtle/CMakeFiles/cpp_turtle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : cpp_turtle/CMakeFiles/cpp_turtle.dir/depend

