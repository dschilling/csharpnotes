# csharpnotes

This is a work in progress, to take David Eck's introductory computer science textbook and convert it from Java to C#. Currently no progress has been made - I'm just getting started. Come back in a few months to see where things are!

This git repository contains the full source files for the free textbook *Introduction to Programming Using C#,* Version 1.
It builds upon David Eck's wonderful work from *Introduction to Programming Using Java,* Version 9, which
has been available on the web in a series of versions since 1996.

*Introduction to Programming Using C#* is a free introductory textbook covering the C# programming language.
This first version covers C# 10 as found in .NET 6. This book's release date is currently still TBD. When published, it will be available online
at [https://codewren.ch/csharpnotes](https://codewren.ch/csharpnotes) and the original Java edition can be accessed
at [https://math.hws.edu/javanotes](https://math.hws.edu/javanotes).
The front page of each web site has links for downloading the textbook in web-site, PDF, and eBook formats.

This repository contains the source files that are used to generate the C# edition in all formats.
The sources include XML, XSLT, DTD, image, and C# files, plus some scripts for generating the various formats.  The
scripts were written for Linux but should also work on MacOS, and can also be run on Windows with the help of Docker.
Because of the large variety of formats, the whole
thing has gotten rather complicated.  Since the source files were not originally meant for publication, they
are not very cleanly written, and using them would require a lot of expertise.

The sources are stored in a folder named `csharpnotes1`, which
contains everything that is needed to produce the C# edition.  To use it to produce the book, you first
need to export the files by editing and running the script *export-source.sh* from the `csharpnotes1` folder.  (The
script must first be edited to specify the correct directory names for the local environment.)  The exported
directory will contain scripts for building the JavaFX edition in various formats and a file, `README.txt`,
with instructions for using the scripts.

To produce the book from the XML/XSLT files, you will need a copy of the XSLT processor
[Xalan-J](https://xml.apache.org/xalan-j/).  The XSLT files use some features that are specific to Xalan-J.

(Source files for David Eck's Java edition can be found at [https://github.com/davidjeck/javanotes9](https://github.com/davidjeck/javanotes9), or in the `java` branch of this repository)

