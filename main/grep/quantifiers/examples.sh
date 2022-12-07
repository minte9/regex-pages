: "Correct php variable names"
: "Strings with double quotes"
: "Time of the day, such as 9:17 AM"

grep '$[a-zA-Z_][a-zA-Z_0-9]*' examples.txt --colour
grep '"[^"]*"' -o examples.txt --colour
grep '[0-9]?[0-9]:[0-9][0-9] (am|pm)' -o -E examples.txt --colour