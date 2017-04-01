NAME	= ms
LATEX = latex
PDFLATEX= pdflatex
BIBTEX	= bibtex
MAKEINDEX = makeindex
DVIPDF	= dvipdf
CP = cp
SRC	= $(NAME).tex
TARGET	= $(NAME).pdf
TARGETDVI = $(NAME).dvi

pdflatex : $(SRC)
	$(MAKEINDEX) $(NAME).tex
	$(MAKEINDEX) $(NAME).ind
#	$(BIBTEX) $(NAME)
	$(PDFLATEX) $^
	$(PDFLATEX) $^
	skim $(TARGET) &

clean :
	rm -f *.aux *.log *.bbl *.blg *.out *.ilg *.ind *.idx *toc 
	rm -r -f _region_* auto
