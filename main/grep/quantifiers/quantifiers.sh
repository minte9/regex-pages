#!/bin/sh

: "Quantifiers
Metacharacter + means one or more of the preceding item
Metacharacter * means any (none or more), which is similar to the ?
"

echo ': "result.txt \n' > result.txt

grep '<H[1-6] *>' -E sample.txt >> result.txt

cat 'sample.txt'
cat 'result.txt'