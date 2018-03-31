LATEX=platex
BIBTEX=bibtex
DVI2PDF=dvipdfmx
TEXFILE=x2

all: pdf
dvi: ${TEXFILE}.dvi
pdf: ${TEXFILE}.pdf

${TEXFILE}.dvi: ${TEXFILE}.tex 1-1.tex 1-2.tex 1-3.tex 1-4.tex 1-5.tex 2-1.tex 2-2.tex 2-3.tex 2-4.tex 3-1.tex 3-2.tex 3-3.tex
	${LATEX} ${TEXFILE} && ${LATEX} ${TEXFILE}
${TEXFILE}.pdf: ${TEXFILE}.dvi
	${DVI2PDF} ${TEXFILE}.dvi
view:
	pxdvi ${TEXFILE}.dvi &
clean:
	rm -f ${TEXFILE}.dvi ${TEXFILE}.pdf ${TEXFILE}.log ${TEXFILE}.aux texput.log
