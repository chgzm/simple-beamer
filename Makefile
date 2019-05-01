NMAIN=main
TEX=$(NMAIN).tex
$(NMAIN).pdf : $(TEX)
	xelatex --no-pdf $(NMAIN).tex
	xelatex $(NMAIN).tex

clean:
	rm $(NMAIN).log $(NMAIN).nav $(NMAIN).snm $(NMAIN).toc $(NMAIN).out $(NMAIN).aux $(NMAIN).xdv $(NMAIN).vrb $(NMAIN).pdf
