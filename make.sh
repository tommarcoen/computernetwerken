#!/bin/sh
pdflatex main-book
makeindex main-book
makeglossaries main-book
biber main-book
pdflatex main-book
pdflatex main-book
pdflatex main-book

pdflatex main-presentation
pdflatex main-presentation

grep -i warning *.log
