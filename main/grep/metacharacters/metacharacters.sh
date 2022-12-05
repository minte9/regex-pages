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

grep '^cat' sample.txt -i --color
grep 'dog$' sample.txt -i --color
grep 'bird' sample.txt -i --color