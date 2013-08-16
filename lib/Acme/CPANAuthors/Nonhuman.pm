use strict;
use warnings;
package Acme::CPANAuthors::Nonhuman;
# ABSTRACT: We are non-human CPAN authors

use namespace::autoclean;
use utf8;

my %authors = (
# this data was generated at build time via __DATA__ section and Dist::Zilla::Plugin::MungeFile::WithData{{
        my $filename = "01mailrc.txt.gz";
        @ids = split(' ', $DATA);   # awk-style emulation
        require HTTP::Tiny;
        my $response = HTTP::Tiny->new->mirror('http://www.cpan.org/authors/01mailrc.txt.gz', $filename);
        die "failed to fetch $filename: $response->{status} $response->{reason}\n"
            if not $response->{success} and $response->{status} ne '304';

        require Acme::CPANAuthors::Utils::Authors;
        my $author_data = Acme::CPANAuthors::Utils::Authors->new($filename);
        my $authorhash = { map {
            $_ => $author_data->author($_)->name,
        } @ids };

        require Acme::CPANAuthors::Factory;
        $authors = Acme::CPANAuthors::Factory->create(Nonhuman_temp => $authorhash);

        # sort the list by the number of that author's distributions
        @ids = map { $_->{id} }
            sort { $b->{dists} <=> $a->{dists} || $a->{id} cmp $b->{id} }
            map { +{ id => $_, dists => $authors->distributions($_) // 0 } }
                @ids;

        "\n" . join('', map {
            "    $_  => '$authorhash->{$_}',\n";
        } @ids);
}}
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

<div style="text-align:center;padding:0px !important">
<!-- this data was generated at build time via __DATA__ section and Dist::Zilla::Plugin::MungeFile::WithData -->
{{
    my @lines = map {
        my $url = $authors->avatar_url($_);
        qq{<a href="http://metacpan.org/author/$_">}
            . qq{<img style="margin-bottom:5px;margin-right:3px !important" src="$url" alt="$_" />}
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

=for stopwords programmatically

I wrote this module initially as a reaction to a previous L<Acme::CPANAuthors>
distribution that inappropriately highlighted a particular demographic (it has
now since been deleted).  Then, I realized that so much of the content I
wanted to include in this module could be programmatically generated, so I
continued on as an exercise in templating code at build time using raw data in
the C<__DATA__> section.  That support code has since been split off into its
own distribution, L<Dist::Zilla::Plugin::MungeFile::WithData>.

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
