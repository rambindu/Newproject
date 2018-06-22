files:= main \SubString

	
.PHONY:all
all: compile link 
	@echo "done successfully"

compile:
	gcc -c src/main.c -o main
	gcc -c src/SubString.c -o SubString
	
link:
	gcc $(files) -o output

.PHONY:run
run:execute

execute:
	./output

clean:
	rm -f output
