#!/bin/sh

FILENAME=index

platex -shell-escape index.tex
platex -shell-escape index.tex
mendex -f index.idx
platex -shell-escape index.tex

if ! [ -d ./build-environment ]; then
  mkdir build-environment
fi
dvipdfmx -p b5 -c -r 600 -v -V 3 -o build-environment/index.pdf index
