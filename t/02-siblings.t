use strict;
use warnings FATAL => 'all';

use Test::More;

{
    package # hide from PAUSE
        Foo;

    use Module::Pluggable
         search_path => ['Acme::CPANAuthors', 'MyClass::Extend'],
         sub_name => 'authors';
    use Module::Runtime 'use_module';

    my @plugins = __PACKAGE__->authors;

    ::diag 'all installed modules in the CPAN::Authors namespace:'
        . "\n"
        . join("\n", map {
            $_ . ' ' . (use_module($_)->VERSION || 'undef')
        } sort @plugins);
}

pass 'oh hai!';

done_testing;
