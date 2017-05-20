#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

my $passwd_f = '/etc/passwd';
open my $PW, '<', $passwd_f or die "Can't open $passwd_f:$!\n";

my ( $name, $passwd, $uid, $gid, $gcos, $dir, $shell);
while ( chomp( $_ = <$PW>)) {
	($name, $passwd, $uid, $gid, $gcos, $dir, $shell) = split(/:/);
	print "$name, $passwd, $uid, $gid, $gcos, $dir, $shell\n";
}

close $PW;

my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
