#!/bin/perl -l
=begin

Many flavors allow some of the regex and match modes to be set
A mode modifier turns on the mode only for what's matched 
within the parentheses

(?i)    case-insensitivity match mode
(?x)    free-spacing and comments regex mode
(?s)    dot-matches-all match mode
(?m)    enchanced line-anchor match mode
(?-i)   turns off case-insensitivity

=cut

$a = "This is string";
$b = "Not A String";

$a =~ m/((?i)[a-z]+)/;
print $1; # This

$b =~ m/((?i)[a-z]+ [a-z]+)/;
print $1; # Not A