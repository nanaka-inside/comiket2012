#!/bin/sh

FILENAME=index

platex -shell-escape index.tex
platex -shell-escape index.tex
mendex -f index.idx
platex -shell-escape index.tex
dvipdfmx index 

mv index.pdf build-environment

find -type f \( -name "*aux" -or -name "*out" -or -name "*toc" -or -name "*ilg" -or -name "*dvi" -or -name "*log" \) -exec rm {} \;
