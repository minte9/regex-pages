#!/bin/sh

: "Get into the habit of interpreting regex
in a rather literal way

Do not think ^cat matches if you have:
a line with cat at the beginning

But rather ^cat matches if you have: 
the beginning of a line, followed by c, by a, ...

Grep understands bytes and lines
when no metacharacters, plain text search
"

A='Cat at the beggining'
B='At the end dog'
C='Birds everywhere bird'

echo $A | grep '^cat' -i > result.txt
echo $A | grep '^cat' -i --color

echo $B | grep 'dog$' -i >> result.txt
echo $B | grep 'dog$' -i --color

echo $C | grep 'bird' -i >> result.txt
echo $C | grep 'bird' -i --color