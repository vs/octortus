all: .build

.init: clean
	cd build && rm -rf *.tex *.bib img/* 
	cp *.tex build/
	cp -R img build/

.build: .init draft.tex .dispose
	cd build && pdflatex --file-line-error-style draft.tex
	cd build && pdflatex --file-line-error-style draft.tex

.dispose: clean
	
clean:
	cd build && rm -f *.aux *.bbl *.toc *.blg *.log *.out *.nav *.snm
