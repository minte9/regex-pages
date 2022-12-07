#!/bin/sh

: "Backreference
Parentheses used to limit the scope of alternation 
    (a|b)
Parentheses group multiple characters to apply quantifiers 
    (abc)?
Parentheses can remember text matched by subexpression 
    ([a-z]) \1
You can have more than one set of parentheses
Use \1, \2, etc to refer to first, second, etc
"

echo ': "result.txt \n' > result.txt

grep '\<the +the\>' -E sample.txt >> result.txt
grep '\<(an) +\1\>' -E sample.txt >> result.txt

cat sample.txt
cat result.txt

grep '\<([a-z]+) \1\>' -E sample.txt --colour