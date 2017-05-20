#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

opendir my $DIR, '.' or die "Can't open the current directory: $!\n";
my @names = readdir $DIR or die "Unable to read current dir:$!\n";
closedir $DIR;

foreach my $name (@names) {
	next if ($name eq '.');
	next if ($name eq '..');
	
	if (-d $name) {
		print "found a directory: $name\n";
		next;
	}

	if ($name eq 'core') {
		print "found one!\n";
	}
}

my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
