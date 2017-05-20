#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

my $pwd = "./sourcedir";
opendir(DIR, "$pwd") or die ("Cannot open $pwd\n");
my @files = readdir(DIR);
closedir(DIR);

foreach my $file(@files) {
	next if ($file !~ /\.txt$/i);
	my $mtime = (stat("$pwd/$file"))[9];
	print $mtime;
	print "\n";

}


my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
