#!/bin/perl -l
=begin

Backslashes are used to escape forward slashes, 
used by Perl for search and replace
It's a little ugly, but Perl allows us to pick our own delimiters
Escape is not necessary anymore

s|regex|replacement|modifiers OR 
s{regex}{replacement}modifiers

=cut

$a = 'jfriedl@regex.info';
$a =~ s{(\w+@\w+(\.\w+))}{<a href="mailto:$1">$1</a>}g;
print $a;