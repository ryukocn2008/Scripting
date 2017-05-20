#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

my $age = 26;
my @date = (8, 24, 70);
my %fruit = ('apples', 3, 'oranges', 6);

print "Year is $date[2]\n";
print "How many apples: $fruit{'apples'}\n";


my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
