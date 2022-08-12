all: README.md

README.md: guessinggame.sh
	echo "#Guessing Game Project" >> README.md
	echo -n "- Date make was run: " >> README.md
	date >> README.md
	echo -n "- Number of lines of code: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
