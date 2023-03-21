#!/bin/bash

VERSION='csharpnotes1'

if [ ! -d build_output ] ; then
   echo Cannot find build_output directory
   exit
fi

echo Changing to build_output
cd build_output

if [ -e csharpnotes1.pdf -o -e csharpnotes1-linked.pdf -o -e web-site -o -e csharpnotes1.epub -o -e exercise-programs ] ; then
   echo Creating downloads directory
   mkdir downloads
else
   echo "Nothing to publish!"
   exit
fi

if [ -e "csharpnotes1.pdf" ] ; then
   echo Move csharpnotes1.pdf to downloads directory
   mv csharpnotes1.pdf downloads/$VERSION.pdf
fi

if [ -e "csharpnotes1-linked.pdf" ] ; then
   echo Move csharpnotes1-linked.pdf to downloads directory
   mv csharpnotes1-linked.pdf downloads/$VERSION-linked.pdf
fi

if [ -e "csharpnotes1.epub" ] ; then
   echo Move csharpnotes1.epub to downloads directory
   mv csharpnotes1.epub downloads/$VERSION.epub
fi

if [ -e "csharpnotes1.mobi" ] ; then
   echo Move csharpnotes1.mobi to downloads directory
   mv csharpnotes1.mobi downloads/$VERSION.mobi
fi

if [ -e "web-site" ] ; then
   echo Creating archives of web site and renaming web-site directory to $VERSION
   mv web-site $VERSION-web-site
   zip -r $VERSION.zip $VERSION-web-site > /dev/null
   mv $VERSION.zip downloads
#   tar cf $VERSION.tar $VERSION-web-site
#   bzip2 $VERSION.tar
#   mv $VERSION.tar.bz2 downloads
   mv $VERSION-web-site $VERSION
   mv $VERSION/news.html $VERSION/news-for-archive.html
   mv $VERSION/news-for-web.html $VERSION/news.html
   echo Creating the separate source download
   mkdir $VERSION-example-programs
   cp -a $VERSION/source $VERSION-example-programs
   cp $VERSION/README-running-the-examples.txt $VERSION-example-programs
   zip -r $VERSION-example-programs.zip $VERSION-example-programs > /dev/null
   mv $VERSION-example-programs.zip downloads
   rm -r $VERSION-example-programs
fi

if [ -e "exercise-programs" ] ; then
   echo Creating archive of exercise solutions
   mv exercise-programs $VERSION-exercise-solutions
   zip -r $VERSION-exercise-solutions.zip $VERSION-exercise-solutions > /dev/null
   mv $VERSION-exercise-solutions.zip downloads
   rm -r $VERSION-exercise-solutions
fi

cd ..

echo
echo Output in build_output folder.
echo

