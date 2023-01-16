#!/bin/sh

compile_book()
{
   echo "Building the book..."
   pdflatex main-book &> /dev/null
   makeindex main-book &>/dev/null
   makeglossaries main-book &> /dev/null
   biber main-book &> /dev/null
   pdflatex main-book &> /dev/null
   pdflatex main-book &> /dev/null
   pdflatex main-book &> /dev/null
}

compile_presentation()
{
   echo "Building the presentation..."
   pdflatex main-presentation &> /dev/null
   pdflatex main-presentation &> /dev/null
}

if [ "$1" = "clean" ]; then
   echo "Removing untracked files from the working tree..."
   git clean -Xf &> /dev/null
elif [ "$1" = "book" ]; then
   compile_book
elif [ "$1" = "presentation" ]; then
   compile_presentation
else
   compile_book
   compile_presentation
fi
