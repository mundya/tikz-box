# Beamer Makefile
# (C) Andrew Mundy 2013

# Configuration
TEX=pdflatex
BIB=bibtex
TEXFLAGS=
BIBFLAGS=
texdoc=tikzbox

.PHONY: clean
.PHONY: all
.PHONY: slides
.PHONY: article

# Make all items
all : slides article

slides :
	$(TEX) $(TEXFLAGS) $(texdoc).beamer

article :
	$(TEX) $(TEXFLAGS) $(texdoc).article

# Clean
clean :
	$(RM) *.toc *.nlo *.out *.blg *.aux *.log *.bbl *.nlo *.nls *.pdf *.ilg *.nav *.snm
