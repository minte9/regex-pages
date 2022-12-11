#!/bin/perl -l
=begin

The rules change if your you're in a character class or not
Star (*) is never a metacharacter within a class, while
dash (-) usually is 

A character class must always match a character to be successful
A negated class must still match a character, but one not listed

Dot (.) ussualy does not match a newline, 
while a negated class like [^*] ussualy does

=cut

$a = "Is star * a metacharacter?";
$b = "star * is a metacharacter";
$c = "star * is a metacharacter!";
$d = "This is a 'quote \n on two' lines";

print ($a =~ m/([a-z *])+/);    # r
print ($b =~ m/[A-Z]+/);        # 
print ($c =~ m/([^a-z *])+/);   # !
print ($d =~ m/'(.*)'/);        # 
print ($d =~ m/'([^']*)'/);     # $1 = quote, $2 = on two