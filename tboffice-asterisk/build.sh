#!/bin/sh

FILENAME=asterisk-index

platex -shell-escape $FILENAME.tex
platex -shell-escape $FILENAME.tex
mendex -f $FILENAME.idx
platex -shell-escape $FILENAME.tex
dvipdfmx $FILENAME 
