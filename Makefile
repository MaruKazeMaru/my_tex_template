TARGET=

all:$(TARGET)


%.pdf:%.dvi
	dvipdfmx $<


%.dvi:%.tex
	@rm *.aux *.log
	platex $<
	platex $<


clean:
	@rm *.aux *.log *.dvi src/*.pdf
