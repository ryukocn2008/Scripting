#!/usr/bin/perl

foreach $rock (qw/ bedrock slate lava /) {
	print "One rock is $rock.\n"; # Prints names of three rocks
}


@rocks = qw/ bedrock slate lava /;
foreach $rock (@rocks) {
	$rock = "\t$rock"; # put a tab in front of each element of @rocks
	$rock .= "\n"; # put a newline on the end of each
}
print "The rocks are:\n", @rocks; # Each one is indented, on its own line


foreach (1..10) { # Uses $_ by default
	print "I can count to $_!\n";
}
