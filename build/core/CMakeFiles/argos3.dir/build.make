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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/harry/Desktop/argos3-harry/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/harry/Desktop/argos3-harry/build

# Include any dependencies generated for this target.
include core/CMakeFiles/argos3.dir/depend.make

# Include the progress variables for this target.
include core/CMakeFiles/argos3.dir/progress.make

# Include the compile flags for this target's objects.
include core/CMakeFiles/argos3.dir/flags.make

core/CMakeFiles/argos3.dir/simulator/query_plugins.cpp.o: core/CMakeFiles/argos3.dir/flags.make
core/CMakeFiles/argos3.dir/simulator/query_plugins.cpp.o: /Users/harry/Desktop/argos3-harry/src/core/simulator/query_plugins.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/harry/Desktop/argos3-harry/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object core/CMakeFiles/argos3.dir/simulator/query_plugins.cpp.o"
	cd /Users/harry/Desktop/argos3-harry/build/core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/argos3.dir/simulator/query_plugins.cpp.o -c /Users/harry/Desktop/argos3-harry/src/core/simulator/query_plugins.cpp

core/CMakeFiles/argos3.dir/simulator/query_plugins.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/argos3.dir/simulator/query_plugins.cpp.i"
	cd /Users/harry/Desktop/argos3-harry/build/core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/harry/Desktop/argos3-harry/src/core/simulator/query_plugins.cpp > CMakeFiles/argos3.dir/simulator/query_plugins.cpp.i

core/CMakeFiles/argos3.dir/simulator/query_plugins.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/argos3.dir/simulator/query_plugins.cpp.s"
	cd /Users/harry/Desktop/argos3-harry/build/core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/harry/Desktop/argos3-harry/src/core/simulator/query_plugins.cpp -o CMakeFiles/argos3.dir/simulator/query_plugins.cpp.s

core/CMakeFiles/argos3.dir/simulator/query_plugins.cpp.o.requires:

.PHONY : core/CMakeFiles/argos3.dir/simulator/query_plugins.cpp.o.requires

core/CMakeFiles/argos3.dir/simulator/query_plugins.cpp.o.provides: core/CMakeFiles/argos3.dir/simulator/query_plugins.cpp.o.requires
	$(MAKE) -f core/CMakeFiles/argos3.dir/build.make core/CMakeFiles/argos3.dir/simulator/query_plugins.cpp.o.provides.build
.PHONY : core/CMakeFiles/argos3.dir/simulator/query_plugins.cpp.o.provides

core/CMakeFiles/argos3.dir/simulator/query_plugins.cpp.o.provides.build: core/CMakeFiles/argos3.dir/simulator/query_plugins.cpp.o


core/CMakeFiles/argos3.dir/simulator/main.cpp.o: core/CMakeFiles/argos3.dir/flags.make
core/CMakeFiles/argos3.dir/simulator/main.cpp.o: /Users/harry/Desktop/argos3-harry/src/core/simulator/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/harry/Desktop/argos3-harry/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object core/CMakeFiles/argos3.dir/simulator/main.cpp.o"
	cd /Users/harry/Desktop/argos3-harry/build/core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/argos3.dir/simulator/main.cpp.o -c /Users/harry/Desktop/argos3-harry/src/core/simulator/main.cpp

core/CMakeFiles/argos3.dir/simulator/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/argos3.dir/simulator/main.cpp.i"
	cd /Users/harry/Desktop/argos3-harry/build/core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/harry/Desktop/argos3-harry/src/core/simulator/main.cpp > CMakeFiles/argos3.dir/simulator/main.cpp.i

core/CMakeFiles/argos3.dir/simulator/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/argos3.dir/simulator/main.cpp.s"
	cd /Users/harry/Desktop/argos3-harry/build/core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/harry/Desktop/argos3-harry/src/core/simulator/main.cpp -o CMakeFiles/argos3.dir/simulator/main.cpp.s

core/CMakeFiles/argos3.dir/simulator/main.cpp.o.requires:

.PHONY : core/CMakeFiles/argos3.dir/simulator/main.cpp.o.requires

core/CMakeFiles/argos3.dir/simulator/main.cpp.o.provides: core/CMakeFiles/argos3.dir/simulator/main.cpp.o.requires
	$(MAKE) -f core/CMakeFiles/argos3.dir/build.make core/CMakeFiles/argos3.dir/simulator/main.cpp.o.provides.build
.PHONY : core/CMakeFiles/argos3.dir/simulator/main.cpp.o.provides

core/CMakeFiles/argos3.dir/simulator/main.cpp.o.provides.build: core/CMakeFiles/argos3.dir/simulator/main.cpp.o


core/CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.o: core/CMakeFiles/argos3.dir/flags.make
core/CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.o: core/argos3_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/harry/Desktop/argos3-harry/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object core/CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.o"
	cd /Users/harry/Desktop/argos3-harry/build/core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.o -c /Users/harry/Desktop/argos3-harry/build/core/argos3_autogen/mocs_compilation.cpp

core/CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.i"
	cd /Users/harry/Desktop/argos3-harry/build/core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/harry/Desktop/argos3-harry/build/core/argos3_autogen/mocs_compilation.cpp > CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.i

core/CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.s"
	cd /Users/harry/Desktop/argos3-harry/build/core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/harry/Desktop/argos3-harry/build/core/argos3_autogen/mocs_compilation.cpp -o CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.s

core/CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.o.requires:

.PHONY : core/CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.o.requires

core/CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.o.provides: core/CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.o.requires
	$(MAKE) -f core/CMakeFiles/argos3.dir/build.make core/CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.o.provides.build
.PHONY : core/CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.o.provides

core/CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.o.provides.build: core/CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.o


# Object files for target argos3
argos3_OBJECTS = \
"CMakeFiles/argos3.dir/simulator/query_plugins.cpp.o" \
"CMakeFiles/argos3.dir/simulator/main.cpp.o" \
"CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.o"

# External object files for target argos3
argos3_EXTERNAL_OBJECTS =

core/argos3: core/CMakeFiles/argos3.dir/simulator/query_plugins.cpp.o
core/argos3: core/CMakeFiles/argos3.dir/simulator/main.cpp.o
core/argos3: core/CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.o
core/argos3: core/CMakeFiles/argos3.dir/build.make
core/argos3: core/libargos3core_simulator.dylib
core/argos3: /usr/lib/libdl.dylib
core/argos3: /usr/lib/libpthread.dylib
core/argos3: /usr/local/lib/libfreeimage.dylib
core/argos3: /usr/local/lib/libfreeimageplus.dylib
core/argos3: /usr/local/lib/liblua.a
core/argos3: core/CMakeFiles/argos3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/harry/Desktop/argos3-harry/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable argos3"
	cd /Users/harry/Desktop/argos3-harry/build/core && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/argos3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
core/CMakeFiles/argos3.dir/build: core/argos3

.PHONY : core/CMakeFiles/argos3.dir/build

core/CMakeFiles/argos3.dir/requires: core/CMakeFiles/argos3.dir/simulator/query_plugins.cpp.o.requires
core/CMakeFiles/argos3.dir/requires: core/CMakeFiles/argos3.dir/simulator/main.cpp.o.requires
core/CMakeFiles/argos3.dir/requires: core/CMakeFiles/argos3.dir/argos3_autogen/mocs_compilation.cpp.o.requires

.PHONY : core/CMakeFiles/argos3.dir/requires

core/CMakeFiles/argos3.dir/clean:
	cd /Users/harry/Desktop/argos3-harry/build/core && $(CMAKE_COMMAND) -P CMakeFiles/argos3.dir/cmake_clean.cmake
.PHONY : core/CMakeFiles/argos3.dir/clean

core/CMakeFiles/argos3.dir/depend:
	cd /Users/harry/Desktop/argos3-harry/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/harry/Desktop/argos3-harry/src /Users/harry/Desktop/argos3-harry/src/core /Users/harry/Desktop/argos3-harry/build /Users/harry/Desktop/argos3-harry/build/core /Users/harry/Desktop/argos3-harry/build/core/CMakeFiles/argos3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : core/CMakeFiles/argos3.dir/depend

