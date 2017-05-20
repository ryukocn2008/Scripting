#!/usr/bin/perl

use File::Find::Rule;

my @files = File::Find::Rule->
    extras({follow => 1})->
    file()->
    name( '*.pm' )->
    in( @INC )
    ;
