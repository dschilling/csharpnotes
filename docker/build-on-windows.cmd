@echo off
if "%~1"=="" (
    echo "Usage: %0 TARGET"
    echo "where TARGET is one of epub, exercise-programs, linked-pdf, lulu, pdf, or web-site"
    exit /b 1
)
@echo on
docker run -it --rm --env XALAN_DIR=/usr/share/java -v %~dp0..:/home/eck/git/csharpnotes -w /home/eck/git/csharpnotes csharpnotes docker/entry-point.sh %1