#!/bin/bash


# Runs all different build options depending on what flags are passed in
POSITIONAL=()
while [[ $# -gt 0 ]]
do
	key="$1"
	case $key in
		-f)
			BINARY=$2
			SOURCE=$3
			ocamlc -o $BINARY $SOURCE
			break
			;;
		-b)
			BINARY=$2
			SOURCE=$3
			ocamlbuild -quiet $BINARY
			break
			;;
		*)
			BINARY=$1
			SOURCE=$2
			ocamlc -o $BINARY $SOURCE
			break
			;;
	esac
done
set -- "${POSITIONAL[@]}"

# Runs the newly compiled binary

## Check that this is different from previous binary
./$BINARY
