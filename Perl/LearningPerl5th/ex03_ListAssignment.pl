#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

my ($fred, $barney, $dino) = ("flintstone", "rubble", undef);

my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);

($fred, $barney) = ($barney, $fred);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);

my @betty;
$betty[0] = "First";
$betty[1] = "Second";
$all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
($betty[0], $betty[1]) = ($betty[1], $betty[0]); # swap those values
print Dumper($all_ref);
