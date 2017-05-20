#!/usr/bin/perl

use strict;
use warnings;

our $foo = 1;
our $bar = 2;

{
    my $foo = 3;
	in_scope_variables();
}


in_scope_variables();

sub in_scope_variables {
	no strict 'refs';
	foreach my $entry(keys %main::) {
		print "$entry\n";
	}
}
