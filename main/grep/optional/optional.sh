#!/bin/sh

: "Optional items
Question mark in colou?r means u optional
It is placed after the character that is optional
Grouping for optional, is one of the main uses of parantheses
"

A='color colour colur colou semicolon'
B='4 4th 4th?'

echo $A | grep 'colou?r' -o -E | tee result.txt
echo $B | grep '4(th)?'  -o -E | tee result.txt -a