: "Correct php variable names"

grep '$[a-zA-Z_][a-zA-Z_0-9]*' examples.txt --colour

: "Strings with double quotes"

grep '"[^"]*"' -o examples.txt --colour

: "Time of the day, such as 9:17 AM"

grep '[0-9]?[0-9]:[0-9][0-9] (am|pm)' -o -E examples.txt --colour