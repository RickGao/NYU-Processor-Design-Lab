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

---

## Lab 5
**Folder**: [lab5](https://github.com/RickGao/NYU-Processor-Design-Lab/tree/main/lab5)
