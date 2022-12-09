#!/bin/sh

: "Quantifiers:
Correct php variable names
Strings with double quotes
Time of the day, such as 9:17 AM
"

A='$a, $_b, $C, but not $1a'
B='"abc", but not "abc d'
C='
09:17 am
99:99 pm
9:17 am
12:30 pm
'

echo $A | grep '\$[a-zA-Z_][a-zA-Z_0-9]*'               -o -E | tee res2.txt
echo $B | grep '"[^"]*"'                                -o -E | tee res2.txt -a
echo $C | grep '\<(1[012]|[1-9]):[0-5][0-9]\> (am|pm)'  -o -E | tee res2.txt -a