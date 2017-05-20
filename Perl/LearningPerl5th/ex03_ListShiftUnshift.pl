#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

my @array = qw# dino fred barney #;
my $m = shift(@array);
my $n = shift @array;
shift @array;
my $o = shift @array;
unshift(@array, 5);
unshift @array, 4;
my @others = 1..3;
unshift @array, @others;

my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
