.PHONY: clean strip all re
SHELL=/bin/bash

docname=slides

all: $(docname).pdf

%.pdf: %.tex
	xelatex $<

clean:
	rm -f $(docname).{log,aux,pdf,toc,out,snm,nav}

re: clean all
