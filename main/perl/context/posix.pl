#!/bin/perl -l
=begin

POSIX bracket expressions are a special kind of character classes
They use the same syntax with square brackets

An example is [:lower:], which represents any lower-case letter 
(within the current locale)
It is comparable with [a-z], but includes other characters such as Ã± or Ãµ

[:alnum:]   alphabetic characters and numeric character
[:alpha:]   alphabetic characters
[:lower:]   lowercase alphabetics
[:upper:]   uppercase alphabetics

=cut

$a = "This is a 123 string Ãµ";

print ($a =~ m/([[:alnum:]]+)/); # This
print ($a =~ m/([[:alnum:]]+)/g); # Thisisa123string