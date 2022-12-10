#!/bin/perl -l
=begin

Readability modifier

Perl allows /x modifier, to rewrite regex on multiple lines
This modifier does two simple but powerful things
First, it causes most whitespaces to be ignored
Secondly, it allows comments with a leading #

=cut

$a = 'jfriedl123_@regex.123.info';

# search and replace
$a =~ s{    
    # capture the email address to $1
    (    
        # username regex
        [-a-zA-Z0-9._]+

        # hosname regex
        @[-a-z0-9]+(?:\.[-_a-z0-9]+)*\.(?:com|edu|info) 
    )    
    }{<a href="mailto:$1">$1<\/a>}gix; # x modifier - Wow!

print $a; 
# <a href='mailto:jfriedl123_@regex.123.info'>jfriedl123_@regex.123.info</a>