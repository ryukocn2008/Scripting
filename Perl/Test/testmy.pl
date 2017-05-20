#!/usr/bin/perl


$var = "サブルーチンの外\n";
print $var; #「サブルーチンの外」が出力される
&example;
sub example {
    my $var = "サブルーチンの中\n";
    print $var; #「サブルーチンの中」が出力される
}
print $var; #「サブルーチンの外」が出力される
