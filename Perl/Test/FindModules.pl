#!/usr/bin/perl

use ExtUtils::Installed;

my $inst = ExtUtils::Installed->new();
my @module = $inst->modules();

foreach $module (@module) {
	print "$module\n";
}
