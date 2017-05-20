#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

my @rocks = qw{ flintstone slate rubble };
print "quartz @rocks limestone\n";
print "Three rocks are: @rocks.\n";
print "There's nothing in the parens (@empty) here.\n";

my @email01 = "fred@bedrock.edu";
my @email02 = "fred\@bedrock.edu";
my @email03 = 'fred@bedrock.edu';

my @fred01 = qw(hello dolly);
my $y = 2;
my $x01 = "This is $fred01[1]'s place";
my $x02 = "This is $fred01[$y-1]'s place";

my @fred02 = qw(eating rocks is wrong);
$fred02 = "right"; # $fred02 and @fred02 are different variables
print "this is $fred[3]\n";
print "this is ${fred}[3]\n";
print "this is $fred"."[3]\n";
print "this is $fred\[3]\n";

my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
