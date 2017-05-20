#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

sub sum_of_fred_and_barney {
	print "Hey, you called the sum_of_fred_and_barney!\n";
	$fred + $barney;
	print "Hey, I'm returning a value now!\n";
}

$fred = 3;
$barney = 4;
$wilma = &sum_of_fred_and_barney;
print "\$wilma is $wilma.\n";
$betty = 3 * &sum_of_fred_and_barney;
print "\$betty is $betty.\n";



my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
