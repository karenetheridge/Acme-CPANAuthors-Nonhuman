use strict;
use warnings FATAL => 'all';

use Test::More;
use if $ENV{AUTHOR_TESTING}, 'Test::Warnings';

BEGIN { plan skip_all => 'Need a built version of Acme::CPANAuthors::Nonhuman for this test' if -d '.git' }

use Test::Deep;
use Acme::CPANAuthors::Nonhuman;

my $authors = 'Acme::CPANAuthors::Nonhuman';

cmp_deeply(
    { $authors->authors },
    superhashof({ ETHER => 'Karen Etheridge' }),
    'ETHER is in the list of ids returned',
);

is($authors->category, 'Nonhuman', 'respect the "category" interface');

done_testing;
