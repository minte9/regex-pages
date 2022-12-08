#!/bin/perl -l
=pod /**
The text matched (if any) is replaced by replacement
For word boundary use \b
For global replacement use \g modifier */
=cut

$a = 'Jeff Friedl';
$b = 'Jeffrey Friedl';
$c = 'Jeff is Jeff Friedl';

$a =~ s/Jeff/Jeffrey/;
$b =~ s/\bJeff\b/Jeffrey/; #// 
$c =~ s/\bJeff\b/Jeffrey/g;

print $a;   #// Jeffrey Friedl
print $b;   #// Jeffrey Friedl (not Jeffreyrey Friedl)
print $c;   #// Jeffrey is Jeffrey Friedl