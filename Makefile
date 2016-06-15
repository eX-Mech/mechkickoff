#------------------------------------------------------------------------------
# This is a makefile tailored to work on the latex documents for the
# Licentiate and PhD thesis (MechThesis).
#------------------------------------------------------------------------------


# Variables:
#
main = kick-off

TEX = pdflatex
TEX_FLAGS =

BIB = bibtex
BIB_FLAGS =


# Dependencies:
#
SRCS = papercollection.cls  \
       $(main).tex          \

AUXS = $(main).aux  \
       $(main).toc
       
BBLS = #$(main).bbl

# Rules:
#
default: all

all: $(main)
#
$(main): $(SRCS) $(AUXS) $(BBLS)
	@echo building $(main) with $(TEX)
	@$(TEX) $(TEX_FLAGS) -draftmode $(main) #> /dev/null
	@$(TEX) $(TEX_FLAGS) $(main) #> /dev/null

$(AUXS): $(SRCS)
	@echo building $(main) with $(TEX) [for $@]
	@$(TEX) $(TEX_FLAGS) -draftmode $(main) #> /dev/null

%.bbl: %.aux $(main).bib
	@echo building $@ with $(BIB)
	@$(BIB) $(BIB_FLAGS) $(basename $@) #> /dev/null
#
clean: clean_contributions clean_kick-off

clean_kick-off:
	@echo cleaning kick-off
	@rm -f *.ps *.dvi *.aux *.toc *.log *.out *.bbl *.blg *.pls *.psm *~ *.syntex.gz

clean_contributions:
	@echo cleaning contributions
	@rm -f contributions/*.aux contributions/*.bbl contributions/*.blg
