#!/bin/sh

make_clean()
{
   echo "Removing untracked files from the working tree..."
   git clean -Xf
}
compile_book()
{
   echo "Building the book..."
   pdflatex main-book
   makeindex main-book
   makeglossaries main-book
   biber main-book
   pdflatex main-book
   pdflatex main-book
   pdflatex main-book
}

compile_presentation()
{
   echo "Building the presentation..."
   pdflatex main-presentation
   pdflatex main-presentation
}

if [ "$1" = "clean" ]; then
   make_clean
elif [ "$1" = "book" ]; then
   make_clean
   compile_book
elif [ "$1" = "presentation" ]; then
   make_clean
   compile_presentation
else
   make_clean
   compile_book
   compile_presentation
fi
