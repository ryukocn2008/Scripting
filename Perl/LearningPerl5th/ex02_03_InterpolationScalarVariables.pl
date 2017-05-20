#!/usr/bin/env perl
##!/usr/bin/perl

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

$meal = "brontosaurus steak";
my $barney1 = "fred ate a $meal";
my $barney2 = 'fred ate a ' . $meal;

$what = "brontosaurus steak";
$n = 3;
my $barney3 = "fred ate $n $whats.\n";
my $barney4 = "fred ate $n ${what}s.\n";
my $barney5 = "fred ate $n $what" . "s.\n";
my $barney6 = 'fred ate ' . $n . ' ' . $what . "s\n";


my $all_ref = peek_my(0);
print Dumper($all_ref);
