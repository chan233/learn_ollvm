# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /opt/cmake-3.27.3-linux-x86_64/bin/cmake

# The command to remove a file.
RM = /opt/cmake-3.27.3-linux-x86_64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dehua/Desktop/llvm/learn_ollvm/outpass

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dehua/Desktop/llvm/learn_ollvm/outpass/build

# Include any dependencies generated for this target.
include myoutpass/CMakeFiles/LLVMMyoutpass.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include myoutpass/CMakeFiles/LLVMMyoutpass.dir/compiler_depend.make

# Include the progress variables for this target.
include myoutpass/CMakeFiles/LLVMMyoutpass.dir/progress.make

# Include the compile flags for this target's objects.
include myoutpass/CMakeFiles/LLVMMyoutpass.dir/flags.make

myoutpass/CMakeFiles/LLVMMyoutpass.dir/outpass.cpp.o: myoutpass/CMakeFiles/LLVMMyoutpass.dir/flags.make
myoutpass/CMakeFiles/LLVMMyoutpass.dir/outpass.cpp.o: /home/dehua/Desktop/llvm/learn_ollvm/outpass/myoutpass/outpass.cpp
myoutpass/CMakeFiles/LLVMMyoutpass.dir/outpass.cpp.o: myoutpass/CMakeFiles/LLVMMyoutpass.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/dehua/Desktop/llvm/learn_ollvm/outpass/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object myoutpass/CMakeFiles/LLVMMyoutpass.dir/outpass.cpp.o"
	cd /home/dehua/Desktop/llvm/learn_ollvm/outpass/build/myoutpass && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT myoutpass/CMakeFiles/LLVMMyoutpass.dir/outpass.cpp.o -MF CMakeFiles/LLVMMyoutpass.dir/outpass.cpp.o.d -o CMakeFiles/LLVMMyoutpass.dir/outpass.cpp.o -c /home/dehua/Desktop/llvm/learn_ollvm/outpass/myoutpass/outpass.cpp

myoutpass/CMakeFiles/LLVMMyoutpass.dir/outpass.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/LLVMMyoutpass.dir/outpass.cpp.i"
	cd /home/dehua/Desktop/llvm/learn_ollvm/outpass/build/myoutpass && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dehua/Desktop/llvm/learn_ollvm/outpass/myoutpass/outpass.cpp > CMakeFiles/LLVMMyoutpass.dir/outpass.cpp.i

myoutpass/CMakeFiles/LLVMMyoutpass.dir/outpass.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/LLVMMyoutpass.dir/outpass.cpp.s"
	cd /home/dehua/Desktop/llvm/learn_ollvm/outpass/build/myoutpass && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dehua/Desktop/llvm/learn_ollvm/outpass/myoutpass/outpass.cpp -o CMakeFiles/LLVMMyoutpass.dir/outpass.cpp.s

# Object files for target LLVMMyoutpass
LLVMMyoutpass_OBJECTS = \
"CMakeFiles/LLVMMyoutpass.dir/outpass.cpp.o"

# External object files for target LLVMMyoutpass
LLVMMyoutpass_EXTERNAL_OBJECTS =

myoutpass/libLLVMMyoutpass.so: myoutpass/CMakeFiles/LLVMMyoutpass.dir/outpass.cpp.o
myoutpass/libLLVMMyoutpass.so: myoutpass/CMakeFiles/LLVMMyoutpass.dir/build.make
myoutpass/libLLVMMyoutpass.so: myoutpass/CMakeFiles/LLVMMyoutpass.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/dehua/Desktop/llvm/learn_ollvm/outpass/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module libLLVMMyoutpass.so"
	cd /home/dehua/Desktop/llvm/learn_ollvm/outpass/build/myoutpass && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMMyoutpass.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
myoutpass/CMakeFiles/LLVMMyoutpass.dir/build: myoutpass/libLLVMMyoutpass.so
.PHONY : myoutpass/CMakeFiles/LLVMMyoutpass.dir/build

myoutpass/CMakeFiles/LLVMMyoutpass.dir/clean:
	cd /home/dehua/Desktop/llvm/learn_ollvm/outpass/build/myoutpass && $(CMAKE_COMMAND) -P CMakeFiles/LLVMMyoutpass.dir/cmake_clean.cmake
.PHONY : myoutpass/CMakeFiles/LLVMMyoutpass.dir/clean

myoutpass/CMakeFiles/LLVMMyoutpass.dir/depend:
	cd /home/dehua/Desktop/llvm/learn_ollvm/outpass/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dehua/Desktop/llvm/learn_ollvm/outpass /home/dehua/Desktop/llvm/learn_ollvm/outpass/myoutpass /home/dehua/Desktop/llvm/learn_ollvm/outpass/build /home/dehua/Desktop/llvm/learn_ollvm/outpass/build/myoutpass /home/dehua/Desktop/llvm/learn_ollvm/outpass/build/myoutpass/CMakeFiles/LLVMMyoutpass.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : myoutpass/CMakeFiles/LLVMMyoutpass.dir/depend
