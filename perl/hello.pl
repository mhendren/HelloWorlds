#!/usr/bin/perl

$_ = "dxryw  yxxeh";

$_ =~ s,x,l,g;
$_ =~ s,y,o,g;
$_ =~ s,  , \,,g;

$_ = reverse . "\n";

print;
