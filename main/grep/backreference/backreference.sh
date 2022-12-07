#!/bin/sh

: "Backreference with parantheses

(a|b)       Parentheses used to limit the scope of alternation 
(abc)?      Parentheses group multiple characters to apply quantifiers 
([a-z]) \1  Parentheses can remember text matched by subexpression 
    
You can have more than one set of parentheses
Use \1, \2, etc to refer to first, second, etc
"

echo ': "result.txt \n' > result.txt

grep '\<the +the\>' -E sample.txt >> result.txt
grep '\<(an) +\1\>' -E sample.txt >> result.txt

cat sample.txt
cat result.txt

echo '---'
grep '\<([a-z]+) \1\>' -E sample.txt --colour