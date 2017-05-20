#!/usr/bin/perl

use File::Spec;

$path = File::Spec->catfile("home","cindy","docs","resume.doc");
print $path;
print "\n";
