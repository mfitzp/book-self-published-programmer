# Raspberry GUI

This uses AsciiDoctor to build the book, see https://asciidoctor.org/ 

You also need to install asciidoctor-pdf to build the PDF version https://asciidoctor.org/docs/asciidoctor-pdf/

Once setup you can build the book with Make, e.g.

    make pdf

or 

    make ebook
    
Once the build is complete, you'll have the resulting file in `./build`. 

There are currently two editions of the book built from the same source (PySide6 and PyQt6). 
This is the same approach I used for Create GUI Applications: the source code examples in the book can be pulled in from version-specific folders, e.g.
`code/pyqt6` or `code/pyside6` to build the particular book. Then we can use some conditional bits/chapters in the books themselves, to get effectively
2 books for the price of 1.3 ish. We may want to do PyQt5 too since it's still very popular: testing what actually works on Raspberry Pi will be
important of course!

