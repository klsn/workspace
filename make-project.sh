#!/bin/sh

echo Create Project $1
echo Main: $2

mkdir $1
cd $1

touch CMakeLists.txt

# init cmake lists
echo "cmake_minimum_required(VERSION 3.18.2)" >> CMakeLists.txt
echo  >> CMakeLists.txt
echo "project($1)" >> CMakeLists.txt
echo  >> CMakeLists.txt
echo "set(CMAKE_EXPORT_COMPILE_COMMANDS ON)" >> CMakeLists.txt
echo  >> CMakeLists.txt
echo "include_directories(include)" >> CMakeLists.txt
echo "aux_source_directory(src sources)" >> CMakeLists.txt
echo  >> CMakeLists.txt
echo "add_executable($1 \${sources})" >> CMakeLists.txt

mkdir src
mkdir include
mkdir build

cp ../.main.c src/$2

# init build
../make-build.sh $1


