use strict;
use warnings FATAL => 'all';

use Test::More;

{
    package # hide from PAUSE
        Foo;

    use Module::Pluggable
         search_path => ['Acme::CPANAuthors', 'MyClass::Extend'],
         sub_name => 'authors';

    my @plugins = __PACKAGE__->authors;

    ::diag 'all installed modules in the CPAN::Authors namespace:'
        . "\n" . join("\n", map { $_ . ' ' . ($_->VERSION || 'undef') } @plugins);
}

pass 'oh hai!';

done_testing;
