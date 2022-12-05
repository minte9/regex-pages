#!/bin/sh

: "Optional items
Question mark in colou?r means u optional
It is placed after the character that is optional

Grouping for optional, 
is one of the main uses of parantheses

The u? part is always successful
This isn't to say that any regex that contains ? is always successful

For example, in colou?r against 'semicolon', 
both 'colo' and 'u?' are successful, but r fails, so the whole regex fails
"

echo ': "result.txt \n' > result.txt

grep 'colou?r'  -E sample.txt >> result.txt
grep '4(th)?$'   -E sample.txt >> result.txt

cat 'sample.txt'
cat 'result.txt'