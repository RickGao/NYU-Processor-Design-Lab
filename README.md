# NYU Processor Design Lab
[NYU Processor Design](https://nyu-processor-design.github.io) Vertically Integrated Projects Onboarding Labs

For more information please see [Design Notebook](https://nyu-processor-design.github.io/design_notebooks/2024fall/rg4238.html)

## Lab 1
**Folder**: [lab1](https://github.com/RickGao/NYU-Processor-Design-Lab/tree/main/lab1)

**Questions**:  
**Relative Paths**  
The paths used by `target_sources` and `target_include_directories` are relative to the directory where the `CMakeLists.txt` file is located. For example, if the `CMakeLists.txt` is in the `lab1` folder, the path `src/hello.cpp` is interpreted relative to the `lab1` directory.

**Differences between CMake and Ninja**  
CMake is a meta-build system that generates build files (like Makefiles or Ninja files), while Ninja is a build system that performs the actual compiling and linking. Ninja is faster than Make, especially for large projects with incremental builds.

**Why run CMake in its own directory**  
CMake generates many files, such as `Makefile` and `CMakeCache.txt`, which can clutter the source directory. Running CMake in a separate build directory keeps the source directory clean and makes it easier to clean up or rebuild the project without affecting the source files.

---

## Lab 2  
**Folder**: [lab2](https://github.com/RickGao/NYU-Processor-Design-Lab/tree/main/lab2)

**Questions**:
**Why do you think the reason for these different testing approaches are? What are their advantages and disadvantages?**

**Exhaustive Testing (Exercise1)**  
Tests all possible input combinations, ensuring complete coverage.  
**Advantage**: Catches all potential bugs; thorough.  
**Disadvantage**: Time-consuming, impractical for large designs.

**Sampled Testing (Exercise2)**  
Tests a subset of initial values for a hundred cycles.  
**Advantage**: Efficient for large state spaces; covers many transitions.  
**Disadvantage**: May miss bugs in untested states.

**Random Testing (Exercise3)**  
Tests random inputs over a hundred cycles.  
**Advantage**: Explores a wide range of inputs quickly, finds unexpected edge cases.  
**Disadvantage**: No guaranteed coverage, harder to reproduce bugs.

**Conclusion**:  
Exhaustive testing ensures completeness, while sampled and random testing offer efficiency for larger designs. Together, they balance coverage and speed.

---

## Lab 3
**Folder**: [lab3](https://github.com/RickGao/NYU-Processor-Design-Lab/tree/main/lab3)

---

## Lab 4
**Folder**: [lab4](https://github.com/RickGao/NYU-Processor-Design-Lab/tree/main/lab4)

1. What is a registry?

A registry is a collection of information about packages. It serves as a database or repository where packages (source code files) are stored and managed. Registries are referenced in the vcpkg.json file, and they inform the package manager (like vcpkg) where to search for and retrieve these packages.

2. What is a package?

A package is a collection of source code files or other assets that are grouped together to provide a specific functionality or utility. In the context of this lab, examples of packages include:

nyu-cmake: Utility functions for working with SystemVerilog in cmake.
catch2: A testing framework for design verification.
3. What’s the difference between an interface library and a “normal” library or executable? Can you think of any uses for this besides SystemVerilog files?

A normal library or executable contains code that is compiled into an output (e.g., a binary file or shared object file) when the library or executable is built.
An interface library, on the other hand, does not contain precompiled code but instead consists of source files, headers, or other assets. These files are not compiled immediately but are associated with other targets (like executables) that use them.
Uses for interface libraries besides SystemVerilog files:

Header-only libraries in C++ (e.g., libraries that rely entirely on templates and don’t require separate compilation).
Resource files (e.g., configuration files or static assets used at runtime).
Generic programming assets (e.g., template code or reusable algorithms).
4. What is a top module?

A top module is the entry point for simulation or synthesis in hardware design. It is the highest-level module that integrates or instantiates other modules in the hierarchy. In the context of SystemVerilog and Verilator, top modules are the ones explicitly chosen to be exposed for simulation, allowing the design's behavior to be verified through test cases.

For example, in this lab, Exercise1, Exercise2, Exercise3, and Exercise4 are top modules, while Mystery1 and Mystery2 are internal modules that are not directly tested on their own.

---

## Lab 5
**Folder**: [lab5](https://github.com/RickGao/NYU-Processor-Design-Lab/tree/main/lab5)
