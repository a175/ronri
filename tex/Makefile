LATEX=platex
BIBTEX=bibtex
DVI2PDF=dvipdfmx
TEXFILE=x2

all: pdf
dvi: ${TEXFILE}.dvi
pdf: ${TEXFILE}.pdf

${TEXFILE}.dvi: ${TEXFILE}.tex
	${LATEX} ${TEXFILE} && ${LATEX} ${TEXFILE}
${TEXFILE}.pdf: ${TEXFILE}.dvi
	${DVI2PDF} ${TEXFILE}.dvi
view:
	pxdvi ${TEXFILE}.dvi &
clean:
	rm -f ${TEXFILE}.dvi ${TEXFILE}.pdf ${TEXFILE}.log ${TEXFILE}.aux texput.log
