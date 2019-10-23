MAIN = oxford_team_proposal

all: paper 

bib:
	pdflatex $(MAIN)
	bibtex $(MAIN)
	pdflatex $(MAIN)
	pdflatex $(MAIN)

paper:
	pdflatex $(MAIN)

clean:
	rm -f *.aux *.log *.toc *.bbl *.blg *.out *.spl

cleaner:
	rm -f *.aux *.log *.toc *.bbl *.blg *.out *.pdf *.spl *.dvi

