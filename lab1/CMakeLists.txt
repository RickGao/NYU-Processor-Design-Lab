cmake_minimum_required(VERSION 3.30)
cmake_policy(SET CMP0048 NEW)
project(lab1 VERSION 1.0.0)

# 添加可执行文件
add_executable(hello_world)

# 指定源文件的路径
target_sources(hello_world PRIVATE src/hello.cpp src/name.cpp)

# 指定头文件所在的目录
target_include_directories(hello_world PRIVATE include)
