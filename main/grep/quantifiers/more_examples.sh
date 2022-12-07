: "Search for correct php variable names"

grep '$[a-zA-Z_][a-zA-Z_0-9]*' more_examples.txt --colour

: "Search strings with double quotes"

grep '"[^"]*"' -o more_examples.txt --colour