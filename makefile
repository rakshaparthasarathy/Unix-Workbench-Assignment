all: README.md
README.md: guessinggame.sh
	echo "Unix Workbench course assignment" > README.md
	echo "This is when the makefile was made" >> README.md
	date >> README.md
	echo "The number of lines in this code is" >> README.md
	grep -c '' guessinggame.sh >> README.md
clean: 
	rm README.md
