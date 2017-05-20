#!/usr/bin/perl


use File::Spec;
use File::Spec::Functions;

$x = File::Spec->catfile('a', 'b', 'c');
$y = catfile('x', 'y', 'z');
print "$x\n";
print "$y\n";
