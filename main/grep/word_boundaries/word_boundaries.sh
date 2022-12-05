#!/bin/sh

: "Word boundaries, a common problem:
A regex that match a word can also match it embedded 
You can use metasequences \b if is supported by your software
"

echo ': "result.txt \n' > result.txt

grep 'gray'         sample.txt >> result.txt
grep '\b(cat)\b' -E sample.txt >> result.txt

cat 'sample.txt'
cat 'result.txt'