%.pdf : %.tex git-presentation.tex
	pdflatex $<
	pdflatex $<

default : git-presentation.article.pdf git-presentation.beamer.pdf git-presentation.handout.pdf open

open : 
	open git-presentation.article.pdf
	open git-presentation.beamer.pdf
	open git-presentation.handout.pdf

clean :
	rm *.{pdf,toc,aux,snm,log,nav,out,vrb}
