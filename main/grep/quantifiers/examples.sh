: "Search for correct php variable names"
: "Search strings with double quotes"

grep '$[a-zA-Z_][a-zA-Z_0-9]*' examples.txt --colour
grep '"[^"]*"' -o examples.txt --colour