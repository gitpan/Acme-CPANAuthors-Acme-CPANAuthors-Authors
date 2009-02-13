#!perl -I../lib
use strict;
use warnings;
use Acme::CPANAuthors;
use Test::More tests => 3;
my $authors
    = Acme::CPANAuthors->new('Acme::CPANAuthors::Acme::CPANAuthors::Authors');
is($authors->count, 15, 'number of authors');
is_deeply(
    [sort $authors->id],
    [qw[ ACALPINI    ASHLEY
         FAYLAND
         GARU        GUGOD
         HINRIK
         ISHIGAKI
         KENTARO
         MARCEL
         SANKO       SAPER   SFINK   SHARIFULN   SHLOMIF
         ZOFFIX                                         ]
    ],
    'list of author IDs'
);
is($authors->name('SANKO'), q[Sanko Robinson], q[yay, it's me again]);
