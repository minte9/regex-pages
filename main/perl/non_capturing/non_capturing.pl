#!/bin/perl -l
=begin /**

The surrounding ^$ ensures that the entire string contains only digits
You can use the special notation (?: ), which group but not capture
This ?: has no relation to the optional ? metacharacter */
=cut

$s = '0728824242';
$p = '^[0-9]+$';

if ($s =~ m/$p/) {
    print 'only digits';
}

$s = '-98.6 F';
$p = '^([-+]?[0-9]+(\.[0-9]*)?) (?:[CF])$';

if( $s =~ m/$p/) {
    print $1;   # // -98.6
    print $2;   # // .6
    print $3;   # // null, not captured
}