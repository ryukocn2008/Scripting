#!/usr/bin/env perl
##!/usr/bin/perl

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

# Floating-point
my $num01 = 1.25;
my $num02 = 255.000;
my $num03 = 255.0;
my $num04 = 7.25e45;
my $num05 = -6.5e24;
my $num06 = -12e-24;
my $num07 = -1.2E-23;
# Integer
my $num08 = 0;
my $num09 = 2001;
my $num10 = -40;
my $num11 = 255;
my $num12 = 61298040283768;
my $num13 = 61_298_040_283_768;
# Nondecimal Integer
my $num14 = 0377;
my $num15 = 0xff;
my $num16 = 0b11111111;
my $num17 = 0x1377_0B77;
my $num18 = 0x50_65_72_7c;

# Number Operators
my $num19 = 2 + 3;
my $num20 = 5.1 - 2.4;
my $num21 = 3 * 12;
my $num22 = 14 / 2;
my $num23 = 10.2 / 0.3;
my $num24 = 10 / 3;
my $num25 = 10 % 3;
my $num26 = 10.5 % 3.2;
my $num27 = 2 ** 100;









my $all_ref = peek_my(0);
print Dumper($all_ref);
