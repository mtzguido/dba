.PHONY: clean strip all see re
SHELL=/bin/bash

files=$(wildcard *.tex)
pdfs=$(patsubst %.tex,%.pdf, $(files))
auxs=$(patsubst %.tex,%.aux, $(files))
logs=$(patsubst %.tex,%.log, $(files))

all: mono.pdf

%.pdf: %.tex
	xelatex $<
	xelatex $<

clean:
	rm -f $(pdfs)
	rm -f $(auxs)
	rm -f $(logs)

strip:
	rm -f $(auxs)
	rm -f $(logs)

re: clean all

see: all
	evince $(pdfs) 
