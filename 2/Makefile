.PHONY: clean strip all re
SHELL=/bin/bash

docname=slides

all: $(docname).pdf

%.pdf: %.tex *.tex
	xelatex $<
	xelatex $<

clean:
	rm -f *.{log,aux,pdf,toc,out,snm,nav}

re: clean all
