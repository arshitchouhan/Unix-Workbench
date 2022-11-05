file_name:=README.md
all: title date-time lines

title:
	echo "Unix Workbench" > ${file_name}

date-time:
	date >> ${file_name}

lines:
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> ${file_name}

clean:
	rm -f $(file_name)