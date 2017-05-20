#!/usr/bin/perl

use File::Spec;
use File::Spec::Functions;

$cpath = File::Spec->canonpath(".");
print "$cpath\n"

@directories = {"/usr", "bin"};
print File::Spec->catdir(@directories);
print "\n";
