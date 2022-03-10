#!/bin/sh
# If no command-line arguments were given, just compile the project.
if [ $# -eq 0 ]
then
   pdflatex frankenstein
   biber frankenstein
   makeindex frankenstein
   pdflatex frankenstein
   pdflatex frankenstein
   exit
fi

if [ $1 = "clean" ]
then
   git clean -xdf
   exit
fi
