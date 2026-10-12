all: clean pdf ebook sample

pdf:
	asciidoctor-pdf -o build/selfpubprog.pdf Book.adoc
	# asciidoctor-pdf -o build/selfpubprog.pdf Book.adoc

ebook:
	asciidoctor-epub3 -o build/selfpubprog.epub -a ebook-validate Book.adoc
	asciidoctor-epub3 -o build/selfpubprog.mobi -a ebook-format=kf8 Book.adoc

clean:
	rm -r ./build

