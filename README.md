# C++ Data Structures Lab: Unrolled Linked List + Recursive Split

This repository contains two C++ data-structure implementations with a focus on pointer ownership, time complexity, and memory safety.

## Features

### 1) Recursive Linked List Split (`split.cpp`)
Given a (sorted) singly-linked list, recursively split it into two sorted lists:
- `odds`: nodes with odd values
- `evens`: nodes with even values

**Constraints**
- Must be **recursive** (no `for` / `while`)
- Reuse existing nodes (no extra node allocations required)
- Set input pointer `in` to `nullptr` after splitting (ownership transferred)

**Complexity**
- Time: `O(n)`
- Extra space: `O(n)` recursion stack

### 2) Unrolled Linked List for Strings (`ulliststr.cpp`)
Implements an *Unrolled Linked List* where each node stores a fixed-size array of strings (`ARRSIZE = 10`).
Supports:
- `push_front`, `push_back` in **O(1)**
- `pop_front`, `pop_back` in **O(1)**
- `get`, `set` in **O(n)** (walk nodes + offset)

**Why Unrolled Linked List?**
Compared to a standard linked list, it improves cache locality and reduces pointer overhead by storing multiple elements per node.

## Project Structure

- `split.h / split.cpp` — recursive split implementation
- `ulliststr.h / ulliststr.cpp` — unrolled linked list implementation
- `test_split.cpp` — simple manual test (prints results)
- `test_ulliststr.cpp` — simple manual test (prints results)
- `grade_split.cpp`, `grade_ulliststr.cpp` — GoogleTest suites (provided)
- `grade_split.sh`, `grade_ulliststr.sh` — compile + run tests (provided)

## Build & Run (quick)

### Option A: Run the provided GoogleTest graders
> Requires `g++`, `gtest`, and optionally `valgrind`.

```bash
# Split tests
bash grade_split.sh

# ULListStr tests
bash grade_ulliststr.sh
```

### Option B: Compile and run the simple demos
```bash
g++ split.cpp test_split.cpp -o demo_split
./demo_split

g++ ulliststr.cpp test_ulliststr.cpp -o demo_ullist
./demo_ullist
```

### Notes on Memory Safety
- ULListStr owns its nodes and releases them in clear() and destructor.
- The split function transfers node ownership from in into odds/evens.

## Quick Demo
```bash
bash examples/run_demo.sh
```
