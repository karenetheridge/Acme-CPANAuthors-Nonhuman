use strict;
use warnings;

use Acme::CPANAuthors;
use Acme::CPANAuthors::Nonhuman;
use Gravatar::URL;

my $authors = Acme::CPANAuthors->new('Nonhuman');

print "<center>\n";

foreach my $id ($authors->id)
{
    my $url = $authors->avatar_url($id);
    print q{<img src='}, $url, q{' alt='}, $id, q{' />}, "\n";
}

print "</center>\n";
