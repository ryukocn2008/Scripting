#!/usr/bin/env perl
##!/usr/bin/perl

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;



my $all_ref = peek_my(0);
print Dumper($all_ref);
