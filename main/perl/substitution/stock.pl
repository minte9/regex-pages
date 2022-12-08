#!/bin/perl -l
=pod /**
Remove digits from stock proces, so
    12.37500000392 is reduce to 12.375, yet
    37.500 is reduced to 37.50
Shorthand \d matches a digit, 
Removes a third posible zero (if any) with [1-9]? 
Group in parantheses to capture to $1 */
=cut

$a = '12.37500000392';
$b = '37.500';

$a =~ s/(\d+.\d\d[1-9]?)\d*/$1/;
$b =~ s/(\d+.\d\d[1-9]?)\d*/$1/;

print $a;   #// 12.375
print $b;   #// 37.50