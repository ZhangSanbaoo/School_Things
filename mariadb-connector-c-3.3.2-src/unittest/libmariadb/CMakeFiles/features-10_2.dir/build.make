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
include unittest/libmariadb/CMakeFiles/features-10_2.dir/depend.make

# Include the progress variables for this target.
include unittest/libmariadb/CMakeFiles/features-10_2.dir/progress.make

# Include the compile flags for this target's objects.
include unittest/libmariadb/CMakeFiles/features-10_2.dir/flags.make

unittest/libmariadb/CMakeFiles/features-10_2.dir/features-10_2.c.o: unittest/libmariadb/CMakeFiles/features-10_2.dir/flags.make
unittest/libmariadb/CMakeFiles/features-10_2.dir/features-10_2.c.o: unittest/libmariadb/features-10_2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object unittest/libmariadb/CMakeFiles/features-10_2.dir/features-10_2.c.o"
	cd /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/features-10_2.dir/features-10_2.c.o   -c /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb/features-10_2.c

unittest/libmariadb/CMakeFiles/features-10_2.dir/features-10_2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/features-10_2.dir/features-10_2.c.i"
	cd /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb/features-10_2.c > CMakeFiles/features-10_2.dir/features-10_2.c.i

unittest/libmariadb/CMakeFiles/features-10_2.dir/features-10_2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/features-10_2.dir/features-10_2.c.s"
	cd /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb/features-10_2.c -o CMakeFiles/features-10_2.dir/features-10_2.c.s

# Object files for target features-10_2
features__10_2_OBJECTS = \
"CMakeFiles/features-10_2.dir/features-10_2.c.o"

# External object files for target features-10_2
features__10_2_EXTERNAL_OBJECTS =

unittest/libmariadb/features-10_2: unittest/libmariadb/CMakeFiles/features-10_2.dir/features-10_2.c.o
unittest/libmariadb/features-10_2: unittest/libmariadb/CMakeFiles/features-10_2.dir/build.make
unittest/libmariadb/features-10_2: unittest/mytap/libcctap.a
unittest/libmariadb/features-10_2: unittest/libmariadb/libma_getopt.a
unittest/libmariadb/features-10_2: libmariadb/libmariadbclient.a
unittest/libmariadb/features-10_2: /usr/lib/x86_64-linux-gnu/libssl.so
unittest/libmariadb/features-10_2: /usr/lib/x86_64-linux-gnu/libcrypto.so
unittest/libmariadb/features-10_2: unittest/libmariadb/CMakeFiles/features-10_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable features-10_2"
	cd /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/features-10_2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unittest/libmariadb/CMakeFiles/features-10_2.dir/build: unittest/libmariadb/features-10_2

.PHONY : unittest/libmariadb/CMakeFiles/features-10_2.dir/build

unittest/libmariadb/CMakeFiles/features-10_2.dir/clean:
	cd /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb && $(CMAKE_COMMAND) -P CMakeFiles/features-10_2.dir/cmake_clean.cmake
.PHONY : unittest/libmariadb/CMakeFiles/features-10_2.dir/clean

unittest/libmariadb/CMakeFiles/features-10_2.dir/depend:
	cd /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/unittest/libmariadb/CMakeFiles/features-10_2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unittest/libmariadb/CMakeFiles/features-10_2.dir/depend

