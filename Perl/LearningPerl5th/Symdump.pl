#!/usr/bin/env perl
##!/usr/bin/perl

use warnings;
use diagnostics;
use Devel::Symdump;


package example;

$var = "value";
@var = ("value1", "value2");
%var = ("key1" => "value1", "key2" => "value2");

my $obj = Devel::Symdump->new('example');

print $obj->as_string();
