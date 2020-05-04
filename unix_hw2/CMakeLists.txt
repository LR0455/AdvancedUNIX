cmake_minimum_required(VERSION 3.15)
project(unix_hw2)

set(CMAKE_CXX_STANDARD 14)

add_executable(unix_hw2 example/getuid.c example/inject1.c example/chdir.c example/chdir_inject.c sandbox.c example/opendir.c example/opendir_inject.c example/test.c example/test.c example/test.c main.c sample.c example/stat.c example/stat_inject.c example/execlp.c example/execlp.c)