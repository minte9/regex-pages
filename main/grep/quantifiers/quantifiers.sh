#!/bin/sh

: "Quantifiers
Metacharacter + means one or more of the preceding item
Metacharacter * means any (none or more), which is similar to the ?

Notation {0,1} is the same as ?
When single number is given, such as [a-z]{3}, 
it matches exactly that many
"

echo ': "result.txt \n' > result.txt

grep '<H[1-6] *>' -E sample.txt >> result.txt
grep '<HR +SIZE *= *[0-9]+ *>' -E sample.txt >> result.txt

cat 'sample.txt'
cat 'result.txt'