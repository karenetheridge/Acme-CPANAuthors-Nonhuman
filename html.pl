use strict;
use warnings;

use Acme::CPANAuthors;
use Acme::CPANAuthors::Nonhuman;
use Gravatar::URL;

my $authors = Acme::CPANAuthors->new('Nonhuman');

print "<center>\n";


# sort by number of distributions, using a Schwartzian transform

my @ids = map { $_->{id} }
    sort { $b->{dists} <=> $a->{dists} }
    map { +{ id => $_, dists => $authors->distributions($_) // 0 } }
        $authors->id;

foreach my $id (@ids)
{
    my $url = $authors->avatar_url($id);
    print "<img src=\"$url\" alt=\"$id\" />\n";
}

print "</center>\n";
