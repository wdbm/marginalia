#!/usr/bin/env bash

rm -f -- *.aux *.bbl *.blg *.brf *.idx *.ilg *.ind *.log *.lof *.lot *.out *.toc
xelatex -interaction=nonstopmode -halt-on-error book.tex
makeindex book.idx
bibtex book
xelatex -interaction=nonstopmode -halt-on-error book.tex
xelatex -interaction=nonstopmode -halt-on-error book.tex
rm -f -- *.aux *.bbl *.blg *.brf *.idx *.ilg *.ind *.log *.lof *.lot *.out *.toc
