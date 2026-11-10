FIGURES_SVG=$(wildcard Figures/*.svg)
FIGURES_PDF=$(FIGURES_SVG:.svg=.pdf)

figures: $(FIGURES_PDF)
$(FIGURES_PDF): %.pdf: %.svg
	inkscape --export-filename=$@ $<