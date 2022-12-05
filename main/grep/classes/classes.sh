#!/bin/sh

: "Character class []
matches any one of several characters

For characters inside a class, the implication is OR
For chars outside a class, the implication is AND

Within a class, dash (-) means a range of chars
Multiple ranges are fine [0-9a-z]
"

grep 'gr[-ae]y' sample.txt -i --colour
grep '<H[1-3]>' sample.txt -i --colour