# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pix/pic/sample_d

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pix/pic/sample_d/build

# Utility rule file for ELF2UF2Build.

# Include any custom commands dependencies for this target.
include serial/CMakeFiles/ELF2UF2Build.dir/compiler_depend.make

# Include the progress variables for this target.
include serial/CMakeFiles/ELF2UF2Build.dir/progress.make

serial/CMakeFiles/ELF2UF2Build: serial/CMakeFiles/ELF2UF2Build-complete

serial/CMakeFiles/ELF2UF2Build-complete: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-install
serial/CMakeFiles/ELF2UF2Build-complete: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-mkdir
serial/CMakeFiles/ELF2UF2Build-complete: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-download
serial/CMakeFiles/ELF2UF2Build-complete: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-update
serial/CMakeFiles/ELF2UF2Build-complete: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-patch
serial/CMakeFiles/ELF2UF2Build-complete: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-configure
serial/CMakeFiles/ELF2UF2Build-complete: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-build
serial/CMakeFiles/ELF2UF2Build-complete: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pix/pic/sample_d/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'ELF2UF2Build'"
	cd /home/pix/pic/sample_d/build/serial && /usr/bin/cmake -E make_directory /home/pix/pic/sample_d/build/serial/CMakeFiles
	cd /home/pix/pic/sample_d/build/serial && /usr/bin/cmake -E touch /home/pix/pic/sample_d/build/serial/CMakeFiles/ELF2UF2Build-complete
	cd /home/pix/pic/sample_d/build/serial && /usr/bin/cmake -E touch /home/pix/pic/sample_d/build/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-done

serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-build: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pix/pic/sample_d/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing build step for 'ELF2UF2Build'"
	cd /home/pix/pic/sample_d/build/elf2uf2 && $(MAKE)

serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-configure: serial/elf2uf2/tmp/ELF2UF2Build-cfgcmd.txt
serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-configure: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pix/pic/sample_d/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Performing configure step for 'ELF2UF2Build'"
	cd /home/pix/pic/sample_d/build/elf2uf2 && /usr/bin/cmake -DCMAKE_MAKE_PROGRAM:FILEPATH=/usr/bin/gmake "-GUnix Makefiles" /home/pix/pico/pico-sdk/tools/elf2uf2
	cd /home/pix/pic/sample_d/build/elf2uf2 && /usr/bin/cmake -E touch /home/pix/pic/sample_d/build/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-configure

serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-download: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-source_dirinfo.txt
serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-download: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pix/pic/sample_d/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "No download step for 'ELF2UF2Build'"
	cd /home/pix/pic/sample_d/build/serial && /usr/bin/cmake -E echo_append
	cd /home/pix/pic/sample_d/build/serial && /usr/bin/cmake -E touch /home/pix/pic/sample_d/build/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-download

serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-install: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pix/pic/sample_d/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'ELF2UF2Build'"
	cd /home/pix/pic/sample_d/build/elf2uf2 && /usr/bin/cmake -E echo_append

serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pix/pic/sample_d/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'ELF2UF2Build'"
	cd /home/pix/pic/sample_d/build/serial && /usr/bin/cmake -Dcfgdir= -P /home/pix/pic/sample_d/build/serial/elf2uf2/tmp/ELF2UF2Build-mkdirs.cmake
	cd /home/pix/pic/sample_d/build/serial && /usr/bin/cmake -E touch /home/pix/pic/sample_d/build/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-mkdir

serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-patch: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pix/pic/sample_d/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'ELF2UF2Build'"
	cd /home/pix/pic/sample_d/build/serial && /usr/bin/cmake -E echo_append
	cd /home/pix/pic/sample_d/build/serial && /usr/bin/cmake -E touch /home/pix/pic/sample_d/build/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-patch

serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-update: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pix/pic/sample_d/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No update step for 'ELF2UF2Build'"
	cd /home/pix/pic/sample_d/build/serial && /usr/bin/cmake -E echo_append
	cd /home/pix/pic/sample_d/build/serial && /usr/bin/cmake -E touch /home/pix/pic/sample_d/build/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-update

ELF2UF2Build: serial/CMakeFiles/ELF2UF2Build
ELF2UF2Build: serial/CMakeFiles/ELF2UF2Build-complete
ELF2UF2Build: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-build
ELF2UF2Build: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-configure
ELF2UF2Build: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-download
ELF2UF2Build: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-install
ELF2UF2Build: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-mkdir
ELF2UF2Build: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-patch
ELF2UF2Build: serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-update
ELF2UF2Build: serial/CMakeFiles/ELF2UF2Build.dir/build.make
.PHONY : ELF2UF2Build

# Rule to build all files generated by this target.
serial/CMakeFiles/ELF2UF2Build.dir/build: ELF2UF2Build
.PHONY : serial/CMakeFiles/ELF2UF2Build.dir/build

serial/CMakeFiles/ELF2UF2Build.dir/clean:
	cd /home/pix/pic/sample_d/build/serial && $(CMAKE_COMMAND) -P CMakeFiles/ELF2UF2Build.dir/cmake_clean.cmake
.PHONY : serial/CMakeFiles/ELF2UF2Build.dir/clean

serial/CMakeFiles/ELF2UF2Build.dir/depend:
	cd /home/pix/pic/sample_d/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pix/pic/sample_d /home/pix/pic/sample_d/serial /home/pix/pic/sample_d/build /home/pix/pic/sample_d/build/serial /home/pix/pic/sample_d/build/serial/CMakeFiles/ELF2UF2Build.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : serial/CMakeFiles/ELF2UF2Build.dir/depend

