# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/nvidia/zuckbot_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nvidia/zuckbot_ws/build

# Include any dependencies generated for this target.
include gscam/CMakeFiles/gscam.dir/depend.make

# Include the progress variables for this target.
include gscam/CMakeFiles/gscam.dir/progress.make

# Include the compile flags for this target's objects.
include gscam/CMakeFiles/gscam.dir/flags.make

gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o: gscam/CMakeFiles/gscam.dir/flags.make
gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o: /home/nvidia/zuckbot_ws/src/gscam/src/gscam.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/zuckbot_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o"
	cd /home/nvidia/zuckbot_ws/build/gscam && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gscam.dir/src/gscam.cpp.o -c /home/nvidia/zuckbot_ws/src/gscam/src/gscam.cpp

gscam/CMakeFiles/gscam.dir/src/gscam.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gscam.dir/src/gscam.cpp.i"
	cd /home/nvidia/zuckbot_ws/build/gscam && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/zuckbot_ws/src/gscam/src/gscam.cpp > CMakeFiles/gscam.dir/src/gscam.cpp.i

gscam/CMakeFiles/gscam.dir/src/gscam.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gscam.dir/src/gscam.cpp.s"
	cd /home/nvidia/zuckbot_ws/build/gscam && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/zuckbot_ws/src/gscam/src/gscam.cpp -o CMakeFiles/gscam.dir/src/gscam.cpp.s

gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o.requires:

.PHONY : gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o.requires

gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o.provides: gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o.requires
	$(MAKE) -f gscam/CMakeFiles/gscam.dir/build.make gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o.provides.build
.PHONY : gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o.provides

gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o.provides.build: gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o


# Object files for target gscam
gscam_OBJECTS = \
"CMakeFiles/gscam.dir/src/gscam.cpp.o"

# External object files for target gscam
gscam_EXTERNAL_OBJECTS =

/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: gscam/CMakeFiles/gscam.dir/build.make
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /opt/ros/kinetic/lib/libimage_transport.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /opt/ros/kinetic/lib/libmessage_filters.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /opt/ros/kinetic/lib/libnodeletlib.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /opt/ros/kinetic/lib/libbondcpp.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /usr/lib/aarch64-linux-gnu/libuuid.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /usr/lib/aarch64-linux-gnu/libtinyxml2.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /opt/ros/kinetic/lib/libclass_loader.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /usr/lib/libPocoFoundation.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /usr/lib/aarch64-linux-gnu/libdl.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /opt/ros/kinetic/lib/libroslib.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /opt/ros/kinetic/lib/librospack.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /usr/lib/aarch64-linux-gnu/libpython2.7.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /usr/lib/aarch64-linux-gnu/libboost_program_options.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /usr/lib/aarch64-linux-gnu/libtinyxml.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /opt/ros/kinetic/lib/libcamera_info_manager.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /opt/ros/kinetic/lib/libcamera_calibration_parsers.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /opt/ros/kinetic/lib/libroscpp.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /usr/lib/aarch64-linux-gnu/libboost_signals.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /opt/ros/kinetic/lib/librosconsole.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /usr/lib/aarch64-linux-gnu/libboost_regex.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /opt/ros/kinetic/lib/librostime.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /opt/ros/kinetic/lib/libcpp_common.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /usr/lib/aarch64-linux-gnu/libboost_system.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /usr/lib/aarch64-linux-gnu/libboost_thread.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /usr/lib/aarch64-linux-gnu/libboost_chrono.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /usr/lib/aarch64-linux-gnu/libboost_date_time.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /usr/lib/aarch64-linux-gnu/libboost_atomic.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so
/home/nvidia/zuckbot_ws/devel/lib/libgscam.so: gscam/CMakeFiles/gscam.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nvidia/zuckbot_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/nvidia/zuckbot_ws/devel/lib/libgscam.so"
	cd /home/nvidia/zuckbot_ws/build/gscam && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gscam.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
gscam/CMakeFiles/gscam.dir/build: /home/nvidia/zuckbot_ws/devel/lib/libgscam.so

.PHONY : gscam/CMakeFiles/gscam.dir/build

gscam/CMakeFiles/gscam.dir/requires: gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o.requires

.PHONY : gscam/CMakeFiles/gscam.dir/requires

gscam/CMakeFiles/gscam.dir/clean:
	cd /home/nvidia/zuckbot_ws/build/gscam && $(CMAKE_COMMAND) -P CMakeFiles/gscam.dir/cmake_clean.cmake
.PHONY : gscam/CMakeFiles/gscam.dir/clean

gscam/CMakeFiles/gscam.dir/depend:
	cd /home/nvidia/zuckbot_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nvidia/zuckbot_ws/src /home/nvidia/zuckbot_ws/src/gscam /home/nvidia/zuckbot_ws/build /home/nvidia/zuckbot_ws/build/gscam /home/nvidia/zuckbot_ws/build/gscam/CMakeFiles/gscam.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : gscam/CMakeFiles/gscam.dir/depend

