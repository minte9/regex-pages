#!/bin/perl -l
=begin

Readability modifier /x

Perl allows /x modifier, to rewrite regex on multiple lines
This modifier does two simple but powerful things
First, it causes most whitespaces to be ignored
Secondly, it allows comments with a leading #
Example: Search and replace email address

=cut

$a = 'jfriedl@regex.info';
$a =~ s{    
    # capture the email address to $1
    (    
        # username regex
        [-a-zA-Z0-9._]+

        # hosname regex
        @[-a-z0-9]+(?:\.[-_a-z0-9]+)*\.(?:com|edu|info) 
    )    
    }{<a href="mailto:$1">$1<\/a>}gix; # /x

print $a; 

# <a href="mailto:jfriedl@regex.info">jfriedl@regex.info</a>