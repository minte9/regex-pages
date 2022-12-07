: "Examples
Search for correct php variable names 
Search strings with double quotes
"

cat 'more_examples.txt'
echo '\n---'

grep '$[a-zA-Z_][a-zA-Z_0-9]*' more_examples.txt --colour
grep '"[^"]*"' -o more_examples.txt --colour