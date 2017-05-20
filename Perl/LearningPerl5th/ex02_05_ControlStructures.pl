#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

# If Control Structure
print "Please input a name:\n";
chomp(my $name = <STDIN>);

if ($name gt 'fred') {
print "'$name' comes after 'fred' in sorted order.\n";
} else {
print "'$name' does not come after 'fred'.\n";
print "Maybe it's the same string, in fact.\n";
}

# While Control Structure

my $count = 0;
while ($count < 10) {
$count += 2;
print "count is now $count\n"; # Gives values 2 4 6 8 10
}

my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
