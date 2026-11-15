
.PHONY: all FORCE

all: README.md

README.md: FORCE
	echo "# Guessing Game" > README.md
	echo "" >> README.md
	echo "Date and time: $$(date '+%Y-%m-%d %H:%M:%S')" >> README.md
	echo "" >> README.md
	echo "Number of lines in guessinggame.sh:" >> README.md
	wc -l < guessinggame.sh >> README.md

FORCE:
