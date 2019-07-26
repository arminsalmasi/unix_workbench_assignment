all: README.md	


NOW = $(shell date )

README.md:
	touch README.md
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub">> README.md
	echo "## guessinggame.sh " >> README.md
	echo "This README file is created on:" >>README.md
	@echo ${NOW} >> README.md
	echo "[link to the webpage!](https://arminsalmasi.github.io/unix_workbench_assignment/)">> README.md
#readme.txt:	toc.txt
#	echo "This journal contains the following number of entries:" > readme.txt
#	wc -l toc.txt | egrep -o "[0-9]+" >> readme.txt

clean: 
	rm README.md

