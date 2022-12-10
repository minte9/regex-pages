#!/bin/perl -l
=begin

Lookaround don't actually "consume" any text
Matches only the location (position)

Positive Lookahead (?= )    successful if can MATCH to the RIGHT
Positive Lookbehind (?<= )  successful if can MATCH to the LEFT
Negative Lookahead (?! )    successful if can NOT match to the RIGHT

Examples:

Matches "Jeff" only if it is part of "Jeffrey" (lookahead)
Replace "Jeffs" with "Jeff's" (with lookbehind)
Commafying numbers

=cut

$a = 'Jeffrey Friedl, Jeff Friedl';
$b = 'Jeffs articles';
$c = 'The population of 2298444215 is growing';
$d = 'The population of 2298444215 is growing';
$e = '12345Hz';
$f = '12345Hz';

$a =~ s/(?=Jeffrey)(Jeff)/by $1/;       # lookahead for Jeffrey, then Jeff
$b =~ s/(?<=\bJeff)(?=s\b)/'/g;         # lookbehind for \bJeff
$c =~ s/(?<=\d)(?=(\d\d\d)+)/,/g;       # lookahead for 3 digits
$d =~ s/(?<=\d)(?=(\d\d\d)+\b)/,/g;     # we add \b
$e =~ s/(?<=\d)(?=(\d\d\d)+\b)/,/g;     # doesn't match
$f =~ s/(?<=\d)(?=(\d\d\d)+(?!\d))/,/g; # (?!\d) as 3 digits boundary

print $a; # by Jeffrey Friedl, Jeff Friedl
print $b; # Jeff's articles
print $c; # The population of 2,2,9,8,4,4,4,215 is growing
print $d; # The population of 2,298,444,215 is growing
print $e; # 12345Hz - dont match
print $f; # 12,345Hz