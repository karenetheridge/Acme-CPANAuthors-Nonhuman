use strict;
use warnings;
package Acme::CPANAuthors::Nonhuman;
# ABSTRACT: We are non-human CPAN authors

use namespace::autoclean;
use Acme::CPANAuthors 0.16 ();  # not really needed anymore...

# TODO: we can get around the whole "we have to load the module before we
# replace the template code, so we have to make sure it still evaluates"
# problem by having MungeData simply slurp the .pm file and look for
# qr/^__DATA__/, rather than being fancy and using <DATA>.
# Do I really want to document these silly parsing tricks for others to
# emulate? :D

# predeclare variables so we don't blow up parsing the template code
my ($DATA, $authorhash);
my %authors = (
# this data was generated at build time via __DATA__ section and inc::MungeWithData{{
    $DATA ?  # do nothing if loading before this gets templated
    do {
        my $filename = "01mailrc.txt.gz";
        my @ids = split(' ', $DATA);
        require HTTP::Tiny;
        my $response = HTTP::Tiny->new->mirror('http://www.cpan.org/authors/01mailrc.txt.gz', $filename);
        die "failed to fetch $filename: $response->{status} $response->{reason}\n"
            if not $response->{success} and $response->{status} ne '304';

        require Acme::CPANAuthors::Utils::Authors;
        my $authors = Acme::CPANAuthors::Utils::Authors->new($filename);
        $authorhash = { map {
            my $name = $authors->author($_)->name;
            $_ => $name,
        } @ids };

        "\n" . join('', map {
            "    $_  => '$authorhash->{$_}',\n";
        } keys %$authorhash);
    }
    : ()
# end template
#}}
);

use Sub::Install;
Sub::Install::install_sub({
    code => sub { wantarray ? %authors : \%authors },
    into => __PACKAGE__,
    as   => 'authors',
});

=pod

=head1 SYNOPSIS

    use Acme::CPANAuthors;
    use Acme::CPANAuthors::Nonhuman;

    my $authors = Acme::CPANAuthors->new('Nonhuman');
    my $number   = $authors->count;
    my @ids      = $authors->id;
    my @distros  = $authors->distributions('ETHER');
    my $url      = $authors->avatar_url('MITHALDU');
    my $kwalitee = $authors->kwalitee('GAURAV');

=head1 DESCRIPTION

This class provides a hash of PAUSE IDs and names of non-human CPAN authors.
On the internet, no one knows you're a cat (unless your avatar gives it away)!

=begin html

<div style="text-align:center;padding:5px">
{{
    my $authors = bless($authorhash, 'Acme::CPANAuthors');

    my @ids = map { $_->{id} }
        sort { $b->{dists} <=> $a->{dists} }
        map {
            +{ id => $_, dists => $authors->distributions($_) // 0 } }
            $authors->id;

    my @lines = map {
        my $url = $authors->avatar_url($_);
        "<a href=\"http://metacpan.org/author/$_\">"
            . "<img src=\"$url\" alt=\"$_\" />"
            . "</a>"
            . "\n"
    } @ids;

    my $groupsize = 5;
    # now break up into groups with <br>
    use List::Util 'min';
    join('',
        map { ( @lines[$_*$groupsize .. (min($_*$groupsize+$groupsize-1, $#lines))], "<br />\n" ) } (0 .. int((@lines-1)/$groupsize)),
    );
}}
</div>

=end html

The original list of authors was determined via
L<The Faces of CPAN|http://hexten.net/cpan-faces/>.

=head1 SUPPORT

=for stopwords irc

Bugs may be submitted through L<the RT bug tracker|https://rt.cpan.org/Public/Dist/Display.html?Name=Acme-CPANAuthors-Nonhuman>
(or L<bug-Acme-CPANAuthors-Nonhuman@rt.cpan.org|mailto:bug-Acme-CPANAuthors-Nonhuman@rt.cpan.org>).
I am also usually active on irc, as 'ether' at C<irc.perl.org>.

It may well be the case that some of the authors listed here are B<not>
actually non-human, in which case this absolutely must be reported immediately
so this module can be corrected! We of the furry and clawed will not stand for
imposters in our midst.

On the other hand, occasionally new brothers and sisters join the Perl family
and are not recognized here -- please let me know so they can be added to the
list.

=head1 SEE ALSO

=begin :list

* L<Acme::CPANAuthors> - the main class to manipulate this one.

=end :list

=cut

1;
__DATA__
ABERNDT
ACE
AKIHITO
AKXLIX
ARUN
ARUNBEAR
BAHOOTYPR
BBAXTER
BIGREDS
DAIBA
DOLMEN
ETHER
FGA
GAURAV
GLEACH
HIROSE
INFRARED
IVANWILLS
KAARE
KIBI
MAXS
MITHALDU
PERLPIE
