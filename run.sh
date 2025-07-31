#!/bin/bash
# Usage: ./run.sh input/sample.jpg output/result.jpg
make
./invert "$1" "$2"