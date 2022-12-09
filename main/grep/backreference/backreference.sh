#!/bin/sh

: "Backreference
Parentheses can remember text matched by subexpression 
    ([a-z]) \1 
You can have more than one set of parentheses
Use \1, \2, etc to refer to first, second / -o only-matches

Other uses of parantheses:
To limit the scope of alternation (a|b)
To group multiple characters to apply quantifiers (abc)? 
"

A='
the the theory
the theory
an an answer
an answer
cat cat category
cat category
'

echo $A | grep '\<the +the\>'     -o -E | tee result.txt
echo $A | grep '\<(an) +\1\>'     -o -E | tee result.txt -a
echo $A | grep '\<([a-z]+) \1\>'  -o -E | tee result.txt -a
echo $A | grep '\<([a-z]+) \1\>'  -E --colour