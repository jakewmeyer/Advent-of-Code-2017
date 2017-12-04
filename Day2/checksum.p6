#!/usr/bin/env perl6

use Text::CSV;

sub checksum {
    my $sum = 0;
    my @data = csv(in => "input.csv");
    for @data -> @value {
        $sum += (max @value) - (min @value);
    }
    say $sum;
}

checksum
