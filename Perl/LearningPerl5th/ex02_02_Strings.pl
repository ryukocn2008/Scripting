#!/usr/bin/env perl
##!/usr/bin/perl

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

# Single-Quoted String
my $str01 = 'fred';
my $str02 = 'barney';
my $str03 = '';				# null string
my $str04 = 'Don\'t let an apostrophe end this string prematurely!';
my $str05 = 'the last character of this string is a backslash: \\';
my $str06 = 'hello\n';		# hello followed by backslash followed by n
my $str07 = 'hello
there'; # hello, newline, there (11 characters total)
my $str08 = '\'\\'; # single quote followed by backslash
# Double-Quoted String
my $str09 = "barney";		# just the same as 'barney'
my $str10 = "hello world\n";	# hello world, and a newline
my $str11 = "The last character of this string is a quote mark: \"";
my $str12 = "coke\tsprite";	# coke, a tab, and sprite
# Double-Quoted stirng backslash escapes
my $str13 = "\n";
my $str14 = "\r";
my $str15 = "\t";
my $str16 = "\f";
my $str17 = "\b";
my $str18 = "\a";
my $str18 = "\e";
# Number Operators
my $str19 = "\007";
my $str20 = "\x7f";
my $str21 = "\cC";
my $str22 = "\\";
my $str23 = "\"";
my $str24 = "\lThis will be lower case";
my $str25 = "\LTHIS WILL BE LOWER CASE\E";
my $str26 = "\utHIS WILL BE UPPER CASE";
my $str27 = "\Uthis will be upper case\E";
my $str27 = "\QThis will be quoted\E";


# String operator
my $str28 = "hello" . "world"; # Concatenation
my $str29 = "hello" . ' ' . "world"; # Concatenation
my $str30 = "hello world" . "\n"; # Concatenation
my $str31 = "hello" x 3;			#  Repetition
my $str32 = 5 x 3;			#  Repetition
my $str33 = "barney" x (5 + 6);			#  Repetition






my $all_ref = peek_my(0);
print Dumper($all_ref);
