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
    
    	if ($name eq 'core') {
			if(defined $r) {
				unlink $name or die "Unable to delete $name: $!\n";
			} else {
				print "found one in $workdir!\n";
			}
    	}
    }

	chdir $startdir or die "Unable to change to dir $startdir: $!\n";
}

ScanDirectory('.');



my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
