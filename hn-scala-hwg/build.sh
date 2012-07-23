#!/bin/sh

platex -shell-escape hn-scala-hwg.tex
platex -shell-escape hn-scala-hwg.tex
mendex -f hn-scala-hwg.idx
platex -shell-escape hn-scala-hwg.tex
dvipdfmx hn-scala-hwg 
