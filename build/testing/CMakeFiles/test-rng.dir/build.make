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
include testing/CMakeFiles/test-rng.dir/depend.make

# Include the progress variables for this target.
include testing/CMakeFiles/test-rng.dir/progress.make

# Include the compile flags for this target's objects.
include testing/CMakeFiles/test-rng.dir/flags.make

testing/CMakeFiles/test-rng.dir/unit/test-rng.cpp.o: testing/CMakeFiles/test-rng.dir/flags.make
testing/CMakeFiles/test-rng.dir/unit/test-rng.cpp.o: /Users/harry/Desktop/argos3-harry/src/testing/unit/test-rng.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/harry/Desktop/argos3-harry/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object testing/CMakeFiles/test-rng.dir/unit/test-rng.cpp.o"
	cd /Users/harry/Desktop/argos3-harry/build/testing && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-rng.dir/unit/test-rng.cpp.o -c /Users/harry/Desktop/argos3-harry/src/testing/unit/test-rng.cpp

testing/CMakeFiles/test-rng.dir/unit/test-rng.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-rng.dir/unit/test-rng.cpp.i"
	cd /Users/harry/Desktop/argos3-harry/build/testing && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/harry/Desktop/argos3-harry/src/testing/unit/test-rng.cpp > CMakeFiles/test-rng.dir/unit/test-rng.cpp.i

testing/CMakeFiles/test-rng.dir/unit/test-rng.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-rng.dir/unit/test-rng.cpp.s"
	cd /Users/harry/Desktop/argos3-harry/build/testing && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/harry/Desktop/argos3-harry/src/testing/unit/test-rng.cpp -o CMakeFiles/test-rng.dir/unit/test-rng.cpp.s

testing/CMakeFiles/test-rng.dir/unit/test-rng.cpp.o.requires:

.PHONY : testing/CMakeFiles/test-rng.dir/unit/test-rng.cpp.o.requires

testing/CMakeFiles/test-rng.dir/unit/test-rng.cpp.o.provides: testing/CMakeFiles/test-rng.dir/unit/test-rng.cpp.o.requires
	$(MAKE) -f testing/CMakeFiles/test-rng.dir/build.make testing/CMakeFiles/test-rng.dir/unit/test-rng.cpp.o.provides.build
.PHONY : testing/CMakeFiles/test-rng.dir/unit/test-rng.cpp.o.provides

testing/CMakeFiles/test-rng.dir/unit/test-rng.cpp.o.provides.build: testing/CMakeFiles/test-rng.dir/unit/test-rng.cpp.o


testing/CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.o: testing/CMakeFiles/test-rng.dir/flags.make
testing/CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.o: testing/test-rng_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/harry/Desktop/argos3-harry/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object testing/CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.o"
	cd /Users/harry/Desktop/argos3-harry/build/testing && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.o -c /Users/harry/Desktop/argos3-harry/build/testing/test-rng_autogen/mocs_compilation.cpp

testing/CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.i"
	cd /Users/harry/Desktop/argos3-harry/build/testing && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/harry/Desktop/argos3-harry/build/testing/test-rng_autogen/mocs_compilation.cpp > CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.i

testing/CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.s"
	cd /Users/harry/Desktop/argos3-harry/build/testing && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/harry/Desktop/argos3-harry/build/testing/test-rng_autogen/mocs_compilation.cpp -o CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.s

testing/CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.o.requires:

.PHONY : testing/CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.o.requires

testing/CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.o.provides: testing/CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.o.requires
	$(MAKE) -f testing/CMakeFiles/test-rng.dir/build.make testing/CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.o.provides.build
.PHONY : testing/CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.o.provides

testing/CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.o.provides.build: testing/CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.o


# Object files for target test-rng
test__rng_OBJECTS = \
"CMakeFiles/test-rng.dir/unit/test-rng.cpp.o" \
"CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.o"

# External object files for target test-rng
test__rng_EXTERNAL_OBJECTS =

testing/test-rng: testing/CMakeFiles/test-rng.dir/unit/test-rng.cpp.o
testing/test-rng: testing/CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.o
testing/test-rng: testing/CMakeFiles/test-rng.dir/build.make
testing/test-rng: core/libargos3core_simulator.dylib
testing/test-rng: /usr/lib/libdl.dylib
testing/test-rng: /usr/lib/libpthread.dylib
testing/test-rng: /usr/local/lib/libfreeimage.dylib
testing/test-rng: /usr/local/lib/libfreeimageplus.dylib
testing/test-rng: /usr/local/lib/liblua.a
testing/test-rng: testing/CMakeFiles/test-rng.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/harry/Desktop/argos3-harry/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable test-rng"
	cd /Users/harry/Desktop/argos3-harry/build/testing && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-rng.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
testing/CMakeFiles/test-rng.dir/build: testing/test-rng

.PHONY : testing/CMakeFiles/test-rng.dir/build

testing/CMakeFiles/test-rng.dir/requires: testing/CMakeFiles/test-rng.dir/unit/test-rng.cpp.o.requires
testing/CMakeFiles/test-rng.dir/requires: testing/CMakeFiles/test-rng.dir/test-rng_autogen/mocs_compilation.cpp.o.requires

.PHONY : testing/CMakeFiles/test-rng.dir/requires

testing/CMakeFiles/test-rng.dir/clean:
	cd /Users/harry/Desktop/argos3-harry/build/testing && $(CMAKE_COMMAND) -P CMakeFiles/test-rng.dir/cmake_clean.cmake
.PHONY : testing/CMakeFiles/test-rng.dir/clean

testing/CMakeFiles/test-rng.dir/depend:
	cd /Users/harry/Desktop/argos3-harry/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/harry/Desktop/argos3-harry/src /Users/harry/Desktop/argos3-harry/src/testing /Users/harry/Desktop/argos3-harry/build /Users/harry/Desktop/argos3-harry/build/testing /Users/harry/Desktop/argos3-harry/build/testing/CMakeFiles/test-rng.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : testing/CMakeFiles/test-rng.dir/depend
