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
CMAKE_SOURCE_DIR = /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src

# Include any dependencies generated for this target.
include unittest/libmariadb/CMakeFiles/conc336.dir/depend.make

# Include the progress variables for this target.
include unittest/libmariadb/CMakeFiles/conc336.dir/progress.make

# Include the compile flags for this target's objects.
include unittest/libmariadb/CMakeFiles/conc336.dir/flags.make

unittest/libmariadb/CMakeFiles/conc336.dir/conc336.c.o: unittest/libmariadb/CMakeFiles/conc336.dir/flags.make
unittest/libmariadb/CMakeFiles/conc336.dir/conc336.c.o: unittest/libmariadb/conc336.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object unittest/libmariadb/CMakeFiles/conc336.dir/conc336.c.o"
	cd /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/conc336.dir/conc336.c.o   -c /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb/conc336.c

unittest/libmariadb/CMakeFiles/conc336.dir/conc336.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/conc336.dir/conc336.c.i"
	cd /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb/conc336.c > CMakeFiles/conc336.dir/conc336.c.i

unittest/libmariadb/CMakeFiles/conc336.dir/conc336.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/conc336.dir/conc336.c.s"
	cd /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb/conc336.c -o CMakeFiles/conc336.dir/conc336.c.s

# Object files for target conc336
conc336_OBJECTS = \
"CMakeFiles/conc336.dir/conc336.c.o"

# External object files for target conc336
conc336_EXTERNAL_OBJECTS =

unittest/libmariadb/conc336: unittest/libmariadb/CMakeFiles/conc336.dir/conc336.c.o
unittest/libmariadb/conc336: unittest/libmariadb/CMakeFiles/conc336.dir/build.make
unittest/libmariadb/conc336: unittest/mytap/libcctap.a
unittest/libmariadb/conc336: unittest/libmariadb/libma_getopt.a
unittest/libmariadb/conc336: libmariadb/libmariadbclient.a
unittest/libmariadb/conc336: /usr/lib/x86_64-linux-gnu/libssl.so
unittest/libmariadb/conc336: /usr/lib/x86_64-linux-gnu/libcrypto.so
unittest/libmariadb/conc336: unittest/libmariadb/CMakeFiles/conc336.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable conc336"
	cd /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/conc336.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unittest/libmariadb/CMakeFiles/conc336.dir/build: unittest/libmariadb/conc336

.PHONY : unittest/libmariadb/CMakeFiles/conc336.dir/build

unittest/libmariadb/CMakeFiles/conc336.dir/clean:
	cd /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb && $(CMAKE_COMMAND) -P CMakeFiles/conc336.dir/cmake_clean.cmake
.PHONY : unittest/libmariadb/CMakeFiles/conc336.dir/clean

unittest/libmariadb/CMakeFiles/conc336.dir/depend:
	cd /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb/CMakeFiles/conc336.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unittest/libmariadb/CMakeFiles/conc336.dir/depend
