#!/bin/perl -l
=pod

\b normaly matches a word boundary
but, withing a character-class, \b matches a backspace

\s is a shorthand for a whole character-class, any whitespace character
This includes space, tab, newline, and carriage return

Among the more useful shorthands that Perl provide are:

\t    tab character
\n    newline character
\r    carriage-return character
\s    any whitespace character (space, tab, newline)
\S    anything not s
\w    [a-zA-Z0-9_]+ match a word with w+ 
\W    [^a-zA-Z0-9_]+ anything not w 
\d    [0-9] a digit
\D    [^0-9] anything not d
=cut

$s = "-98 F";
if($s =~ m/^([-+]?[0-9]+)\s*[CF]$/) {
    print $1; # -98
}