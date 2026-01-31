#!/usr/bin/env bash
set -e

echo "== demo: recursive split =="
g++ -std=c++17 -O2 split.cpp test_split.cpp -o demo_split
./demo_split
echo

echo "== demo: unrolled linked list =="
g++ -std=c++17 -O2 ulliststr.cpp test_ulliststr.cpp -o demo_ullist
./demo_ullist
