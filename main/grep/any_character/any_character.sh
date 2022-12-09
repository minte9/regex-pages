#!/bin/sh

: "Shorthand for any character
Remember that metacharacters are different inside and outside a class
[-./] more precise, [.] not the same as .
"

A='19/03/2022'
B='19-03-2022'
C='1910312022'

echo $A | grep '19[-./]03[-./]2022' -o | tee result.txt
echo $B | grep '19[-./]03[-./]2022' -o | tee result.txt -a
echo $C | grep '19.03.2022'         -o | tee result.txt -a