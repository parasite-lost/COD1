.PHONY: all clean

TEXSRC = $(wildcard *.tex)

pdf:
	@latexmk -pdf -interaction=nonstopmode -file-line-error -synctex=1 $(TEXSRC)

all: pdf

clean:
	@latexmk -c
