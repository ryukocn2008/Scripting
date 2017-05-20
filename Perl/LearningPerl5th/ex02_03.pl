#!/usr/bin/env perl
##!/usr/bin/perl

use warnings;
use diagnostics;

# Method 1 
#chomp($line = <STDIN>);
# Method 2 
$line = <STDIN>;
# Method 3
$line2 = chomp $line;
chomp($line);
if($line eq "\n" ) {
	print "That was just a blank line!\n";
} else {
	print "That line of input was:  $line\n";
}

