use strict;
use warnings FATAL => 'all';

use Test::More;
use Test::Deep;
use Test::Warnings;
use Acme::CPANAuthors;
use Acme::CPANAuthors::Nonhuman;

my $authors = Acme::CPANAuthors->new('Nonhuman');

isa_ok($authors, 'Acme::CPANAuthors');
ok(()= $authors->id, 'we have ids');

cmp_deeply(
    [ Acme::CPANAuthors->look_for('ETHER') ],
    superbagof({
        id => 'ETHER',
        name => 'Karen Etheridge',
        category => 'Nonhuman'
    }),
    'ETHER is found in this author package',
);

done_testing;
