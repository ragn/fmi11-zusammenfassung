filename = zusammenfassung

neededfiles = 

UNAME_S := $(shell uname -s)

ifeq ($(UNAME_S), Linux)
	pdflatexcmd = pdflatex --shell-escape
	pdfviewercmd = atril
endif

ifeq ($(UNAME_S), Darwin)
	pdflatexcmd = /usr/texbin/pdflatex --shell-escape
	pdfviewercmd = open
endif


all: $(filename).tex $(neededfiles) latex clean
latex:
	$(pdflatexcmd) $(filename)
	$(pdflatexcmd) $(filename)
	$(pdflatexcmd) $(filename)

view:
	if [ -f $(filename).pdf ]; then \
		$(pdfviewercmd) $(filename).pdf; \
	else \
		$(MAKE) all ;\
		$(MAKE) view ;\
	fi
clean:
	git clean -fx
distclean:
	git checkout -f master
	$(MAKE) clean