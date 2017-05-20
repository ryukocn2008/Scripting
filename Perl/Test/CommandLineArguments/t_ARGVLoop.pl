#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

$numArgs = $#ARGV + 1;
print "thanks, you gave me $numArgs command-line arguments:\n";

foreach $argnum (0 .. $#ARGV) {
    print "$ARGV[$argnum]\n";
}

my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
