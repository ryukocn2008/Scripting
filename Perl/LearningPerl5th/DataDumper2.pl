#!/usr/bin/env perl
##!/usr/bin/perl

use warnings;
use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

my $baz = "hi";

foo();

sub foo {
    my $foo = 5;
    my $bar = 10;

    print "I have access to these variables\n";
    my $pad = peek_my(0);
	print Dumper($pad);
=header
    for my $var (keys %$pad) {
        print "\t$var\n";
    }
=cut

    print "and the caller has these variables\n";
    $pad = peek_my(1);
	print Dumper($pad);
=header
    for my $var (keys %$pad) {
        print "\t$var\n";
    }
=cut
}

