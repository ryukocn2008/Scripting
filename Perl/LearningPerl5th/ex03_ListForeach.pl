#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;
foreach $rock01 (qw/ bedrock slate lava /) {
	print "One rock is $rock01.\n"; # Prints names of three rocks
}

@rocks = qw/ bedrock slate lava /;
foreach $rock02 (@rocks) {
	$rock02 = "\t$rock02";
	$rock02 .= "\n";
}
print "The rocks are:\n", @rocks;

my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
