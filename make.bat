@echo off
set PDFLATEX=pdflatex.exe
set PATH="%localappdata%\MikTex 2.9\miktex\bin\"

echo %path%

IF NOT EXIST %path% (
	set PATH="%programfiles(x86)%\MiKTeX 2.9\miktex\bin\"
)

%PATH%%PDFLATEX% -shell-escape zusammenfassung
%PATH%%PDFLATEX% -shell-escape zusammenfassung