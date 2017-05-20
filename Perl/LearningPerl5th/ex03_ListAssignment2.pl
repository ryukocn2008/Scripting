#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

my @rocks = qw/ bedrock slate lava /;
my @tiny = ( );
my @giant = 1..1e2;
my @stuff = (@giant, undef, @giant);
my $dino = "granite";
my @quarry = (@rocks, "curshed rock", @tiny, $dino);
my @copy = @quarry;

my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
