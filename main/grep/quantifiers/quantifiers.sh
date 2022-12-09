#!/bin/sh

: "Quantifiers:
Metacharacter + means one or more of the preceding item
Metacharacter * means any (none or more), which is similar to the ?

Notation {0,1} is the same as ?
When single number is given, such as [a-z]{3}, 
it matches exactly that many
"

A='<H1> <H2> <H3 > <H7>'
B='
<HR SIZE=14>
<HR  SIZE = 14 >
<HRSIZE=14>
'

echo $A | grep '<H[1-6] *>'               -o -E | tee result.txt
echo $B | grep '<HR +SIZE *= *[0-9]+ *>'  -o -E | tee result.txt -a