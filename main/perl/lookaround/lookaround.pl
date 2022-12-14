#!/bin/perl -l
=begin

Lookaround doesn't actually "consume" any text
Matches only the location (position)
Lookahead (?= ) successful if can MATCH to the RIGHT
Lookbehind (?<= ) successful if can MATCH to the LEFT
Negative Lookahead (?! ) successful if can NOT match to the RIGHT

Examples:
Match "Jeff" only if it is part of "Jeffrey" (lookahead)
Replace "Jeffs" with "Jeff's" (with lookbehind)
Commafying numbers

=cut

$a = 'Jeffrey Friedl, Jeff Friedl';
$b = 'Jeffs articles';
$c = 'The population is 2298444215';
$d = 'The population is 2298444215';
$e = '12345Hz';
$f = '12345Hz';

$a =~ s/(?=Jeffrey)(Jeff)/by $1/g;      # lookahead for Jeffrey, then Jeff
$b =~ s/(?<=\bJeff)(?=s\b)/'/g;         # lookbehind for \bJeff
$c =~ s/(?<=\d)(?=(\d\d\d)+)/,/g;       # lookahead for 3 digits
$d =~ s/(?<=\d)(?=(\d\d\d)+\b)/,/g;     # we add \b
$e =~ s/(?<=\d)(?=(\d\d\d)+\b)/,/g;     # doesn't match
$f =~ s/(?<=\d)(?=(\d\d\d)+(?!\d))/,/g; # (?!\d) as 3 digits boundary

print $a; # by Jeffrey Friedl, Jeff Friedl
print $b; # Jeff's articles
print $c; # The population is 2,2,9,8,4,4,4,215
print $d; # The population is 2,298,444,215
print $e; # 12345Hz - dont match
print $f; # 12,345Hz