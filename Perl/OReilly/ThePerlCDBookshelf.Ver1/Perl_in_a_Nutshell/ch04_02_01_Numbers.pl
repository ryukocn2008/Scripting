#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

my $num01 = 12345;
my $num02 = -54321;
my $num03 = 12345.67;
my $num04 = 6.02E23;
my $num05 = 0xffff;
my $num06 = 0377;
my $num07 = 4_294_967_296;


my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
