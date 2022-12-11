#!/bin/perl -l
=begin

Mecanins of Regex Engine

Rule 1
The match that begins earliest wins

Rule 2
The standard quantifiers (?, *, +, and {min,max}) are greedy
They always attempt to match as much as possible

Rule 3
They settle for less only when matching too much ends up 
causing the regex to fail

=cut

$a = "The dragging belly indicates your cat is to fat";
$a =~ s/(fat|cat|belly|your)/X/;
print $a; 
    # The dragging X indicates your cat is to fat


$b = "regexS";
$b =~ m/(\w+)S/;
print $1; 
    # regex
    # The \w+ alone is happy to match the entire word
    # But, if it does, it leaves nothing for S to match


$c = "about 24 characters long";
$c =~ m/^.*([0-9][0-9])/; 
print $1; 
    # 24
    # The .* is forced to give up g, then n, ... until 4