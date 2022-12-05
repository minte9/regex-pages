#!/bin/sh

: "If you use [^..] instead of [..], 
the class matches any character that isn't listed

For example [^1-6] 
matches a character that's not 1 through 6

Regex [^x] 
Doesn't mean 'match unless there is an x'
but rather 'match if there is something that is not x'

The ^ used here is the same as start-of-line caret
But the meaning is completely different

q[^u] matches Iraqi, Iraqian
q[^u] doesn't match Qantas, because it called for a lower case q
q[^u] doesn't match Iraq, because q is at the end 
newline \n character is not [^u]
"

echo ': "result.txt \n' > result.txt

grep 'q[^u]' sample.txt --colour >> result.txt

cat sample.txt
cat result.txt