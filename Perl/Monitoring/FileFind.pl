#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);
use File::Find;

$Data::Dumper::Sortkeys = 1;

my $dir = "./sourcedir";

find(\&do_file, $dir);

sub do_file
{
	my $file = $_;
	print "$file\n" unless ($file !~ /\.txt$/i);

}

my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
