readme.md: guessinggame.sh
	@echo 'this will create the .md file'
	touch readme.md
	echo '# Peer-graded Assignment: Bash, Make, Git, and GitHub\n' > readme.md
	echo 'Date when make was run:' >> readme.md
	date >> readme.md
	echo '\n'
	echo 'Number of lines of code in the game:'  >> readme.md 
	wc -l guessinggame.sh | awk '{ print $$1 }' >> readme.md
