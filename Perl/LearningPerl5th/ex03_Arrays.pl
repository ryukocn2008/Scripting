#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

my $fred = "Fred";
my @fred;
$fred[0] = "yabba";
$fred[1] = "dabba";
$fred[2] = "doo";

my $number = 2.71828;
print $fred[$number - 1]; # Same as printing $fred[1]

my $blank = $fred[142_857];
my $blanc = $mel;


my @rocks;
$rocks[0] = 'bedrock';
$rocks[1] = 'slate';
$rocks[2] = 'lava';
$rocks[3] = 'crushed rock';
$rocks[99] = 'schist';
my $end = $#rocks;
my $number_of_rocks = $end + 1;




my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
