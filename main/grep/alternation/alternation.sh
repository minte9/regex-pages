: "Alterantion
Bob|Robert is one regex that matches either

Within a class, the | is just a normal character, like a and e
gr[ea]y example, can be written grey|gray, and even gr(a|e)y
Use parantheses to constrain the alternation

Not to confuse alternation with character class
A character class can match just a single character

Alternation is part of the main regex language
Character classes are almost like their own special mini-language
"

echo ': "result.txt \n' > result.txt

grep 'Bob|Robert' -E sample.txt >> result.txt
grep 'gr(a|e)y' -E sample.txt >> result.txt
grep '(Fir|1)st [Ss]treet' -E sample.txt >> result.txt
grep '[Thi|3]rd' -E sample.txt >> result.txt

cat 'sample.txt'
cat 'result.txt'