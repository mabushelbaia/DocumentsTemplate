FILE=main
clean:
	@echo "Cleaning up..."
	@rm -rf *.aux *.log *.out *.toc *.bbl *.blg *.gz *toc *.lof *.lot *.fls *.fdb_latexmk >> /tmp/null

pdf:
	@echo "Generating PDF..."
	@pdflatex $(FILE).tex >> /tmp/null
	@bibtex $(FILE).aux >> /tmp/null
	@pdflatex $(FILE).tex >> /tmp/null
	@pdflatex $(FILE).tex >> /tmp/null
	@echo "Done."