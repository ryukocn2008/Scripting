#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

my @array = 5..9;
my $fred = pop(@array);
my $barney = pop @array;
pop @array;

push(@array, 0);
push @array, 8;
push @array, 1..10;
@others = qw/ 9 0 2 1 0/;
push @array, @others;

my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
