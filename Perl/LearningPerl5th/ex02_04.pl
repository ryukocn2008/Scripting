#!/usr/bin/env perl
##!/usr/bin/perl

use warnings;
use diagnostics;

$count = 0;
while ($count < 10) {
	$count += 2;
	print "count is now $count\n"; # Gives values 2 4 6 8 10
}
