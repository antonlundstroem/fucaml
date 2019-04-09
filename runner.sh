#!/bin/bash

# Compile with first argument as name and second as the soruce file, then execute the binary.
ocamlc -o $1 $2
./$1
