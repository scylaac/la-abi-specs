RENDER = asciidoctor
src = lapcs.adoc laelf.adoc ladwarf.adoc

.PHONY: all clean
all: $(patsubst %.adoc, %.html, $(src))

%.html: %.adoc
	$(RENDER) $^ -o $@

clean:
	-rm -rf $(patsubst %.adoc, %.html, $(src))
