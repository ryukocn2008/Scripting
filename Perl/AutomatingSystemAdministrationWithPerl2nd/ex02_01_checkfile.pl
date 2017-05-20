#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);
use Cwd;

$Data::Dumper::Sortkeys = 1;

sub ScanDirectory {
	my $workdir = shift;
	
	my $startdir = cwd;

	chdir $workdir or die "Unable ot enter dir $workdir: $!\n";
	opendir my $DIR, '.' or die "Unable to open $workdir: $!\n";
	my @names = readdir $DIR or die "Unable to read $workdir: $!\n";
	closedir $DIR;

	
    foreach my $name (@names) {
    	next if ($name eq '.');
    	next if ($name eq '..');
    	
    	if (-d $name) {
			ScanDirectory($name);
    		next;
    	}
    
		CheckFile($name) or print cwd . '\\' . $name . "\n";
    }

	chdir $startdir or die "Unable to change to dir $startdir: $!\n";
}

sub CheckFile {
	my $name = shift;

	print STDERR 'Scanning ' . cwd . '\\' . $name . "\n";

	# attempt to read the directory entry for this file
	my @stat = stat($name);
	if ( !$stat[4] && !$stat[5] && !$stat[6] && !$stat[7] && !$stat[8] ) {
		return 0;
	}

	# attempt to open this file
	open my $T, '<', "$name" or return 0;

	# read the file one byte at a time, throw awayactual data in $discard
	for (my $i = 0; $i < $stat[7]; $i++) {
		my $r = sysread($T, $discard, 1);
		if ($r != 1) {
			close $T;
			return 0;
		}
	}


}

ScanDirectory('.');



my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
