NOW = $(shell date )
L = $(shell wc -l guessinggame.sh | awk '{ print $$1}')

all: README.md guessinggame.sh
	echo $(L2)

README.md:
	touch README.md
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub">> README.md
	echo "## guessinggame.sh " >> README.md
	echo "- This README file is created on:" >>README.md
	@echo ${NOW} >> README.md
	echo "- [link to the webpage!](https://arminsalmasi.github.io/unix_workbench_assignment/)">> README.md
	echo "number of lines in the guessinggame.sh file:" >> README.md
	echo ${L} >> README.md

clean: 
	rm README.md
