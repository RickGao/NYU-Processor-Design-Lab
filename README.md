# NYU-Processor-Design-Lab
NYU Processor Design Onboarding Labs

Lab 1
Folder: lab1
Questions:
Relative Paths
The paths used by target_sources and target_include_directories are relative to the directory where the CMakeLists.txt file is located. For example, if the CMakeLists.txt is in the lab1 folder, the path src/hello.cpp is interpreted relative to the lab1 directory.
Differences between CMake and Ninja
CMake is a meta-build system that generates build files (like Makefiles or Ninja files), while Ninja is a build system that performs the actual compiling and linking. Ninja is faster than Make, especially for large projects with incremental builds.
Why run CMake in its own directory
CMake generates many files, such as Makefile and CMakeCache.txt, which can clutter the source directory. Running CMake in a separate build directory keeps the source directory clean and makes it easier to clean up or rebuild the project without affecting the source files.

Lab 2
