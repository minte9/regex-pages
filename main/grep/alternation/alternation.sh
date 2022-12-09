#!/bin/sh

: "Alterantion
Bob|Robert is one regex that matches either

Within a class, the | is just a normal character, like a and e
gr[ea]y example, can be written grey|gray, and even gr(a|e)y
Use parantheses to constrain the alternation

Not to confuse alternation with character class
A character class can match just a single character

Alternation is part of the main regex language
Character classes are almost like their own special mini-language
"

A='Bob Robert John'
B='gray grey greay greey'
C='First Street Fir1st Sstreet 1st street' 
D='Third Thi|3rd 3rd'

echo $A | grep 'Bob|Robert'          -o -E | tee result.txt
echo $B | grep 'gr(a|e)y'            -o -E | tee result.txt -a
echo $C | grep '(Fir|1)st [Ss]treet' -o -E | tee result.txt -a
echo $D | grep '[Thi|3]+rd'          -o -E | tee result.txt -a