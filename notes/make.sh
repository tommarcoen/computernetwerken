#!/bin/sh
# If no command-line arguments were given, just compile the project.
if [ $# -eq 0 ]
then
   pdflatex main
   biber main
   makeindex main
   pdflatex main
   pdflatex main
   exit
fi

if [ $1 = "clean" ]
then
   git clean -xdf
   exit
fi
