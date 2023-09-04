# Computer networks

## Course description and introduction

## Source files

The manuals as well as the slides are created using LaTeX.
The documents are split over quite a few differnet files.

  - **main.tex** contains links to all the chapters, inserts the glossary, index, et cetera.
  - **tex/manual.tex** and **tex/slides.tex** contain some specific commands to either generate the manual or the slide deck.
  - **manual-student.tex** defines the target audience to be a student and then includes the actual manual, whereas **tex/manual-teacher.tex** defines the audience to be the instructor.
  - For instructors, there is an additional file, as he can chose which page format he wants for the manual (A5 or A4).

Files that are not very interesting to look at, are hidden away in the _tex/_ folder.
The actual contents is stored in files in the _chapters/_ folder.

## Main packages

  - **beamer** to generate the slides as well as the manual
  - **exsheets** for the exercises in the manual
  - **multiaudience** to create a different version of the manual for instructor and student