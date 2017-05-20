#!/usr/bin/env perl
##!/usr/bin/perl

@lines = `perldoc -u -f atan2`;
foreach (@lines) {
 s/\w<([^>]+)>/\U$1/g;
 print;
}
