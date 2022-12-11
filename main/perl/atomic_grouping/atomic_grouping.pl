#!/bin/perl -l
=begin

Atomic grouping (?> )

The string ¡Hola! is match by ¡.*!, but is not match by atomic grouping ¡(?>.*)!
In either case, .* first internaly matches as much as it can (¡Hola!)
Then gives up some of what is match to force the regex to match (the final !)
This doesn't happen when there is a atomic grouping

=cut

$a = "¡Hola!";
$b = "¡Hola!";

print ($a =~ m/¡(.*)!/);    # Hola
print ($b =~ m/¡(?>.*)!/);  #   // not matching