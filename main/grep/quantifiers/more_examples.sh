: "Examples
Search for correct php variable names 
Search strings with double quotes
"

echo ': "more_examples_result.txt \n' > more_examples_result.txt

grep '$[a-zA-Z_][a-zA-Z_0-9]*' -o more_examples.txt >> more_examples_result.txt
grep '"[^"]*"' -o more_examples.txt >> more_examples_result.txt

cat 'more_examples.txt'
cat 'more_examples_result.txt'