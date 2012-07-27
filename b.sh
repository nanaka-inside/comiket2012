#!/bin/sh

FILENAME=index

platex -shell-escape index.tex
platex -shell-escape index.tex
mendex -f index.idx
platex -shell-escape index.tex

dvipdfmx -p b5 -c -r 600 -v -V 3 -o build-environment/index.pdf index
