#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

my @fred = 6..10;
my @barney = reverse(@fred);
my @wilma = reverse 5..10;
my @orgin = @fred;
@fred = reverse @fred;

my @rocks = qw/ bedrock slate rubble granite /;
my @sorted = sort(@rocks);
my @back = reverse sort @rocks;
my @rocks = sort @rocks;
my @numbers = sort 97..102;


my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
