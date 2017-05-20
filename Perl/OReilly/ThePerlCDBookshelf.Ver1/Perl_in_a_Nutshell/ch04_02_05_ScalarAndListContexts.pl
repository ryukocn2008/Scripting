#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;
my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime();
my $now = localtime();

my $a = (2, 4, 6, 8);
my @c = qw/This is a test/;
my $b = @c;



my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
