#!/bin/perl -l
=pod /**
We want to remove digits from stock proces, 
so 12.37500000392 is reduce to 12.375, 
yet 37.500 is reduced to 37.50

Metacharacter \d matches a digit, 
while [1-9]? removes a third posible zero (if any) */
=cut

$price = '12.37500000392';
$price =~ s/(\d+.\d\d[1-9]?)\d*/$1/;
print $price; #// 12.375

$price = '37.500';
$price =~ s/(\d+.\d\d[1-9]?)\d*/$1/;
print $price; #// 37.50