@echo off
set path=%localappdata%\MiKTeX 2.9\miktex\bin\
set pdflatex=pdflatex.exe
IF NOT EXIST "%path%" (
set path="C:\Program Files\MiKTeX 2.9\miktex\bin\"
)
echo %path%
"%path%%pdflatex%" -shell-escape zusammenfassung
"%path%%pdflatex%" -shell-escape zusammenfassung