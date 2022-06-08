#!/bin/bash
function build {
    cd unit
    cmake -S . -B build
    cmake --build build
}

if build ; then
    cd build && ctest
else
    echo Build failed!
fi

