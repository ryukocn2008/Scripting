#!/usr/bin/env perl
##!/usr/bin/perl

use warnings;
use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);


my $var = "value";
my @var = ("value1", "value2");
my %var = ("key1" => "value1", "key2" => "value2");

my $hash_ref = peek_my(0);

print Dumper($hash_ref);
