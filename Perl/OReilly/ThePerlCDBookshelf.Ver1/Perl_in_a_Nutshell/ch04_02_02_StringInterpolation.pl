#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

my $str01 = "\n";	# Newline
my $str02 = "\r";	# Carriage return
my $str03 = "\t";	# Horizontal tab
my $str04 = "\f";	# Form feed
my $str05 = "\b";	# Backspace
my $str06 = "\a";	# Alert (bell)
my $str07 = "\e";	# ESC character
my $str08 = "\033";	# ESC in octal
my $str09 = "\x7f";	# DEL in hexadecimal
my $str10 = "\cC";	# CTRL-C
my $str11 = "\\";	# Backslash
my $str12 = "\"";	# Double quote
my $str13 = "\ua";	# Convert next char to upper case
my $str14 = "\lA";	# Convert next char to lower case
my $str15 = "\Uaaaaaa\E";	# Convert next chars until \E to upper case
my $str16 = "\LAAAAAA\E";	# Convert next chars until \E to lower case
my $str17 = "\Q:;\E";	# Backslash all following non-alphanumeric characters

# Quoting Syntax in Perl
my $str21 = q/This is a Literal quotation/;	# Literal
my $str22 = qq/This is a Literal quotation\n/;	# Literal
my $str23 = qx/ls -al/;				# Command
my @str24 = qw/This is a string list/;		# Word list
my $str25 = m/This is a string list/;		# Pattern match
#my $str24 = s/This is a /string list/;		# Substitution
#my $str24 = tr/This is a /string list/;		# Translation



my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
