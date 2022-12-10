#!/bin/perl -l
=begin /**

Is important to understand that the lookaround 
don't actually "consume" any text

The regex /Jeffrey/ matches Jeffrey in "Jeffrey Friedl"
The regex lookahead, (?=Jeffrey) matches only the location 
    (position) before Jeffrey

Positive Lookahead (?= )    successful if can MATCH to the RIGHT
Positive Lookbehind (?<= )  successful if can MATCH to the LEFT
Negative Lookahead (?! )    successful if can NOT match to the RIGHT

a) Matches "Jeff" only if it is part of "Jeffrey"
b) Replace "Jeffs" with "Jeff's"
c) Replace "Jeffs" with "Jeff's" (with lookbehind)
d) Commafying numbers */
=cut

$a = 'Jeffrey Friedl, Jeff Friedl';
$b = 'Jeffs articles';
$c = 'Jeffs articles';

$a =~ s/(?=Jeffrey)(Jeff)/by $1/;   # // lookahead for Jeffrey, then Jeff
$b =~ s/\bJeff(?=s\b)/Jeff'/g;      # // lookahead for s\b (add ')
$c =~ s/(?<=\bJeff)(?=s\b)/'/g;     # // lookbehind for \bJeff

print $a; # // by Jeffrey Friedl, Jeff Friedl
print $b; # // Jeff's articles
print $c; # // Jeff's articles

$d = "The population of 2298444215 is growing";
$e = "The population of 2298444215 is growing";
$f = "12345Hz";
$g = "12345Hz";

$d =~ s/(?<=\d)(?=(\d\d\d)+)/,/g;       # // lookahead for 3 digits
$e =~ s/(?<=\d)(?=(\d\d\d)+\b)/,/g;     # // we add \b
$f =~ s/(?<=\d)(?=(\d\d\d)+\b)/,/g;     # // doesn't match
$f =~ s/(?<=\d)(?=(\d\d\d)+(?!\d))/,/g; # // (?!\d) as 3 digits boundary

print $d;  # // 2,2,9,8,4,4,4,215
print $e;  # // 2,2,9,8,4,4,4,215
print $f;  # // 12345Hz
print $g;  # // 12,345Hz