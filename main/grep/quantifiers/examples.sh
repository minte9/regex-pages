: "Correct php variable names"
: "Strings with double quotes"
: "Time of the day, such as 9:17 AM"

grep '$[a-zA-Z_][a-zA-Z_0-9]*'              examples.txt --colour
grep '"[^"]*"'                           -o examples.txt --colour
grep '^(1[012]|[1-9]):[0-5][0-9] (am|pm)' -E -o examples.txt --colour