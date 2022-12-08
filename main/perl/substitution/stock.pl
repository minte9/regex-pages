#!/bin/perl -l
=pod /**
Remove digits from stock proces, so
    12.37500000392 is reduce to 12.375, yet
    37.500 is reduced to 37.50
    
Shorthand \d matches a digit, 
    [1-9]? removes a third posible zero (if any)
    $1 capture first group in parantheses */
=cut

$a = '12.37500000392';
$b = '37.500';

$a =~ s/(\d+.\d\d[1-9]?)\d*/$1/;
$b =~ s/(\d+.\d\d[1-9]?)\d*/$1/;

print $a;   #// 12.375
print $b;   #// 37.50