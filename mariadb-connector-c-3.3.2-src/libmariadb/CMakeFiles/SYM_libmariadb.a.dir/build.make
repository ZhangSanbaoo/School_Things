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

# Utility rule file for SYM_libmariadb.a.

# Include the progress variables for this target.
include libmariadb/CMakeFiles/SYM_libmariadb.a.dir/progress.make

libmariadb/CMakeFiles/SYM_libmariadb.a: libmariadb/libmariadb.a


libmariadb/libmariadb.a: libmariadb/libmariadbclient.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating libmariadb.a"
	cd /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/libmariadb && /usr/bin/cmake -E remove -f libmariadb.a
	cd /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/libmariadb && /usr/bin/cmake -E create_symlink libmariadbclient.a libmariadb.a

SYM_libmariadb.a: libmariadb/CMakeFiles/SYM_libmariadb.a
SYM_libmariadb.a: libmariadb/libmariadb.a
SYM_libmariadb.a: libmariadb/CMakeFiles/SYM_libmariadb.a.dir/build.make

.PHONY : SYM_libmariadb.a

# Rule to build all files generated by this target.
libmariadb/CMakeFiles/SYM_libmariadb.a.dir/build: SYM_libmariadb.a

.PHONY : libmariadb/CMakeFiles/SYM_libmariadb.a.dir/build

libmariadb/CMakeFiles/SYM_libmariadb.a.dir/clean:
	cd /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/libmariadb && $(CMAKE_COMMAND) -P CMakeFiles/SYM_libmariadb.a.dir/cmake_clean.cmake
.PHONY : libmariadb/CMakeFiles/SYM_libmariadb.a.dir/clean

libmariadb/CMakeFiles/SYM_libmariadb.a.dir/depend:
	cd /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/libmariadb /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/libmariadb /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/libmariadb/CMakeFiles/SYM_libmariadb.a.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libmariadb/CMakeFiles/SYM_libmariadb.a.dir/depend
