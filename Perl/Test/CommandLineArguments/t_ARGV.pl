#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

# (1) quit unless we have the correct number of command-line args
$num_args = $#ARGV + 1;
if ($num_args != 2 ) {
	print "\nUsage: $0 first_name last_name\n";
	exit;
}

# (2) we got two command-line args, so assume they are the
# first name and last name
$first_name = $ARGV[0];
$last_name = $ARGV[1];

print "Hello, $first_name $last_name\n";



my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
