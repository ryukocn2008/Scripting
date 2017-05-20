#!/usr/bin/env perl
##!/usr/bin/perl

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

# Scalar Assignment
my $fred = 17; # give $fred the value of 17
my $barney = 'hello'; # give $barney the five-character string 'hello'
$barney = $fred + 3; # give $barney the current value of $fred plus 3 (20)
$barney = $barney * 2; # $barney is now $barney multiplied by 2 (40)

# Binary Assignment Operator
$fred += 5;
$barney *= 3;

my $str = "This is a string";
$str .= " ";

my $num = 3;
$num **= 10;


my $all_ref = peek_my(0);
print Dumper($all_ref);
