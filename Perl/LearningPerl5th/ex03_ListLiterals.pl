#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

my @list01 = (1, 2, 3);
my @list02 = (1, 2, 3, );
my @list03 = ("fred", 4.5);
my @list04 = ();
my @list05 = (1..100);
my @list06 = (1..5);
my @list07 = (1.7..5.7);
my @list08 = (5..1);
my @list09 = (0, 2..6, 10, 12);
my $m = 3;
my $n = 10;
my @list10 = ($m..$n);
my @rocks = (1..5);
my @list11 = (0..$#rocks);
my @list12 = ($m, 17);
my @list13 = ($m + $n, $m * $n);
my @list14 = ("fred", "barney", "betty", "wilma", "dino");
my @list15 = qw (fred barney betty wilma dino);
my @list16 = qw (fred
 barney betty
 wilma dino); # same as above, but pretty strange whitespace
my @list17 = qw!fred barney betty wilma dino!;
my @list18 = qw/fred barney betty wilma dino/;
my @list19 = qw#fred barney betty wilma dino#;
my @list20 = qw{fred barney betty wilma dino};
my @list21 = qw[fred barney betty wilma dino];
my @list22 = qw(fred barney betty wilma dino);
my @list23 = qw<fred barney betty wilma dino>;
# escape delimiters 
my @list24 = qw!fred \!barney betty wilma dino!;
# unmatched delimiters
my @list25 = qw{fred !barney betty wilma dino};
# 
my @list26 = qw{
	/fred/!barney
	/betty/wilma/dino
};





my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
