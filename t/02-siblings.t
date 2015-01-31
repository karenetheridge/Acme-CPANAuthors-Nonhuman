use strict;
use warnings;

use Test::More;
use if $ENV{AUTHOR_TESTING}, 'Test::Warnings';

BEGIN { plan skip_all => 'Need a built version of Acme::CPANAuthors::Nonhuman for this test' if -d '.git' }

{
    package # hide from PAUSE
        Foo;

    use Module::Pluggable
         search_path => ['Acme::CPANAuthors'],
         sub_name => 'authors';
    use Module::Runtime 'use_module';

    ::diag 'all installed modules in the Acme::CPANAuthors namespace:'
        . "\n"
        . join("\n", map {
            $_ . ' '
            . do {
                # this is intentionally set up as a failable test, so I see
                # reports that indicate what the bad module(s) are -- e.g.
                # http://www.cpantesters.org/cpan/report/e7d622fc-2527-11e3-b8b2-96b61dda783b
                my $version;
                if (not eval { $version = use_module($_)->VERSION; 1 })
                {
                    ::fail($_ . ' has invalid $VERSION!!! please investigate!');
                    ::diag('error: ' . ($@ || ''));
                    no strict 'refs';
                    $version = ${$_ . '::VERSION'};
                }
                defined $version ? $version : 'undef';
            }
        } sort { $a cmp $b } __PACKAGE__->authors);
}

pass 'oh hai!';

done_testing;
