#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

my $line01 = <STDIN>;
if ($line01 eq "\n") {
	print "That was just a blank line!\n";
} else {
	print "That line of input was: $line01";
}

chomp(my $line02 = <STDIN>);
print "This line after chomp was: $line02";


my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
