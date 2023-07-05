xmldrafts := $(wildcard *.xml)
txtfiles := $(xmldrafts:.xml=.txt)

.PHONY: all
all: drafts

.PHONY: drafts
drafts: $(txtfiles)

%.txt: %.xml
	xml2rfc $< --html --text --expand

clean:
	rm -f *.html *.txt *.exp.xml
