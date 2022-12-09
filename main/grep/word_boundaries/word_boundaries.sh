#!/bin/sh

: "Word boundaries, a common problem:
A regex that match a word can also match it embedded 
You can use metasequences \b if is supported by your software
You can use metasequences \< and \>
"

A='gray grayscale'
B='cat category'
C='doggy dog'

echo $A | grep 'gray'         -o | tee result.txt
echo $B | grep '\b(cat)\b' -E -o | tee result.txt -a
echo $C | grep '\<dog\>'   -E -o | tee result.txt -a