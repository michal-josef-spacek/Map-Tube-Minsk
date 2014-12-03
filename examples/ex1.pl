#!/usr/bin/env perl

# Pragmas.
use strict;
use warnings;

# Modules.
use Encode qw(decode_utf8 encode_utf8);
use Map::Tube::Minsk;

# Object.
my $obj = Map::Tube::Minsk->new;

# Get route.
my $route = $obj->get_shortest_route(decode_utf8('Уручча'), decode_utf8('Усход'));

# Print out type.
print "Route: ".encode_utf8($route)."\n";

# Output:
# Route: Уручча (Маскоўская_лінія), Барысаўскі тракт (Маскоўская_лінія), Усход (Маскоўская_лінія)