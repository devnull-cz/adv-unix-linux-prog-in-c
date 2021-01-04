LATEX=		pdflatex

NOTE=		unix-prog-II.tex
NOTE_PDF=	$(NOTE:tex=pdf)
NOTE_NEW=	$(NOTE_PDF:pdf=pdf.new)

TEX=		overview.tex		\
		debugging.tex		\
		adv-net-prog.tex	\
		terminals.tex		\
		secure-prog.tex		\
		adv-thread-prog.tex	\
		adv-ipc-and-io.tex	\
		changelog.tex		\
		testing.tex

NOTE_FILES=	$(TEX) ${NOTE}

all:		notes

# Run latex twice to generate references correctly.
notes:		$(NOTE_FILES)
		$(LATEX) $(NOTE)
		$(LATEX) $(NOTE)

clean:
		-rm -f *.log *.dvi *.aux *.pdf
