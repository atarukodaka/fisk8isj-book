.SUFFIXES: .re .md

BOOKNAME = fisk8isj
BOOKPDF = ${BOOKNAME}-pdf
#TARGET = technical_elements.re program_components.re result.re
TARGET = fisk8isj.re


.md.re:
	md2review $< > $@

all:  ${TARGET}
	rm -rf ${BOOKPDF}
	review-pdfmaker config.yml


clean:
	rm -rf ${BOOKPDF}  ${TARGET} *~
