#!/bin/sh

: "Character class []
matches any one of several characters

For characters inside a class, the implication is OR
For chars outside a class, the implication is AND

Within a class, dash (-) means a range of chars
Multiple ranges are fine [0-9a-z]
"

A='gray grey greay greey gr-y'
B='<H1>a</H1> <H2>b</H2> <H33>c</H33>'

echo $A | grep 'gr[-ae]y' -o --colour | tee    result.txt
echo $B | grep '<H[1-3]>' -o --colour | tee -a result.txt