#!/bin/sh

: "Shorthand for any character
Remember that metacharacters are different inside and outside a class
[-./] more precise, [.] not the same as .
"

echo ': "result.txt \n' > result.txt

grep '19[-./]03[-./]2022' sample.txt >> result.txt
grep '19.03.2022' sample.txt >> result.txt

echo 'result.txt saved'