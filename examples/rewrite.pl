#!perl6

# rewrite.pl: Convert SSV to CSV
#          (m)'18 Copyright H.M.Brand 2007-2018

# Check rewrite-tuxic.pl for a version with the original style

use v6;
use Text::CSV;

@*ARGS.elems or @*ARGS.push: [ q:to/EOD/;
    a;b;c;d;e;f
    1;2;3;4;5;6
    2;3;4;5;6;7
    3;4;5;6;7;8
    4;5;6;7;8;9
    EOD
    ];

csv(in => csv(in => $_, sep_char => ";"), out => $*OUT) for @*ARGS;
