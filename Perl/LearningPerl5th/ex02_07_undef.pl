#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

my $n = 1;
while ($n < 10) {
	$sum += $n; # By default, $sum is 0
	$n += 2; # On to the next odd number
}
print "The total was $sum.\n";

$n = 1;

while ($n < 10) {
    $str .= "More Text | "; # By default, $sum is a string ""
    $n += 2; # On to the next odd number
}
print "The added-up was $str.\n";

print "Please input a name:\n";
$madonna = <STDIN>;
if ( defined($madonna) ) {
	print "The input was $madonna";
} else {
	print "No input available!\n";
}

my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
