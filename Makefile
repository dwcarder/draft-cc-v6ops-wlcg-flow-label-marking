NAME=draft-cc-v6ops-wlcg-flow-label-marking

.PHONY: all
all: drafts

.PHONY: drafts
drafts: $(NAME).txt

$(NAME).txt: $(NAME).xml
	xml2rfc $(NAME).xml --html --text --expand

clean:
	rm -f *.html *.txt *.exp.xml
