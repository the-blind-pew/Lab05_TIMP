# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

#Suppress display of executed commands.
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
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/theblindpew/Lab05_TIMP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/theblindpew/Lab05_TIMP/_build

# Include any dependencies generated for this target.
include CMakeFiles/account.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/account.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/account.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/account.dir/flags.make

CMakeFiles/account.dir/banking/Account.cpp.o: CMakeFiles/account.dir/flags.make
CMakeFiles/account.dir/banking/Account.cpp.o: ../banking/Account.cpp
CMakeFiles/account.dir/banking/Account.cpp.o: CMakeFiles/account.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/theblindpew/Lab05_TIMP/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/account.dir/banking/Account.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/account.dir/banking/Account.cpp.o -MF CMakeFiles/account.dir/banking/Account.cpp.o.d -o CMakeFiles/account.dir/banking/Account.cpp.o -c /Users/theblindpew/Lab05_TIMP/banking/Account.cpp

CMakeFiles/account.dir/banking/Account.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/account.dir/banking/Account.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/theblindpew/Lab05_TIMP/banking/Account.cpp > CMakeFiles/account.dir/banking/Account.cpp.i

CMakeFiles/account.dir/banking/Account.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/account.dir/banking/Account.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/theblindpew/Lab05_TIMP/banking/Account.cpp -o CMakeFiles/account.dir/banking/Account.cpp.s

# Object files for target account
account_OBJECTS = \
"CMakeFiles/account.dir/banking/Account.cpp.o"

# External object files for target account
account_EXTERNAL_OBJECTS =

libaccount.a: CMakeFiles/account.dir/banking/Account.cpp.o
libaccount.a: CMakeFiles/account.dir/build.make
libaccount.a: CMakeFiles/account.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/theblindpew/Lab05_TIMP/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libaccount.a"
	$(CMAKE_COMMAND) -P CMakeFiles/account.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/account.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/account.dir/build: libaccount.a
.PHONY : CMakeFiles/account.dir/build

CMakeFiles/account.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/account.dir/cmake_clean.cmake
.PHONY : CMakeFiles/account.dir/clean

CMakeFiles/account.dir/depend:
	cd /Users/theblindpew/Lab05_TIMP/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/theblindpew/Lab05_TIMP /Users/theblindpew/Lab05_TIMP /Users/theblindpew/Lab05_TIMP/_build /Users/theblindpew/Lab05_TIMP/_build /Users/theblindpew/Lab05_TIMP/_build/CMakeFiles/account.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/account.dir/depend

