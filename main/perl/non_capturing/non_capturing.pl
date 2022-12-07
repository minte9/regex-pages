#!/bin/perl -l

# The surrounding ^$ ensures that the entire string contains only digits
# You can use the special notation (?: ), which group but do not capture
# This use of "?:" has no relation to the optional ? metacharacter

$s = "0728824242";
if ($s =~ m/^[0-9]+$/) {
    print "only digits";
}

$s = "-98.6 F";
if($s =~ m/^([-+]?[0-9]+(\.[0-9]*)?) (?:[CF])$/) {
    print $1; # -98.6
    print $2; # .6
    print $3; # nothing (not captured)
}