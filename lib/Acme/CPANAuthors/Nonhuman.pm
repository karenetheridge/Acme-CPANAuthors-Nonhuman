use strict;
use warnings;
package Acme::CPANAuthors::Nonhuman;
# ABSTRACT: We are non-human CPAN authors
# KEYWORDS: acmeism cpan authors animals fun
# vim: set ts=8 sts=4 sw=4 tw=115 et :

our $VERSION = '0.023';

use utf8;

# this data was generated at build time via __DATA__ section
# and {{
    # begin code run at build time
    ref($plugin) . ' ' . $plugin->VERSION . "\n"
    . 'my %authors = (' . "\n" . do {
        my $filename = '00whois.xml';
        @ids = split(' ', $DATA);   # awk-style emulation
        require HTTP::Tiny;
        my $response = HTTP::Tiny->new->mirror('http://www.cpan.org/authors/' . $filename, $filename);
        die "failed to fetch $filename: $response->{status} $response->{reason}\n"
            if not $response->{success} and $response->{status} ne '304';

        require Parse::CPAN::Whois;
        my $author_data = Parse::CPAN::Whois->new($filename);
        my $authorhash = { map {
            $_ => $author_data->author($_)->name,
        } @ids };

        require Acme::CPANAuthors::Factory;
        $authors = Acme::CPANAuthors::Factory->create(Nonhuman_temp => $authorhash);

        require JSON::MaybeXS; JSON::MaybeXS->VERSION('1.001000');
        my $decoder = JSON::MaybeXS->new(utf8 => 0);
        $avatar_urls = { map {
            $_ => ( ($decoder->decode(( HTTP::Tiny->new->get('http://api.metacpan.org/v0/author/' . $_) // {})->{content}) // {})->{gravatar_url} =~ s/s=\K130/80/gr )
        } @ids };

        # list of hashes of { id, name, dists }, sorted by the number of that
        # author's distributions (to also be used later for HTML generation)
        @data =
            sort { $b->{dists} <=> $a->{dists} || $a->{id} cmp $b->{id} }
            map { +{ id => $_, name => $authorhash->{$_}, dists => $authors->distributions($_) // 0 } }
                @ids;

        # return our id => name fields
        join('', map {
            "    $_->{id} => '$_->{name}',\n";
        } @data);
    } . ");\n\n"
    . 'my %avatar_urls = (' . "\n" . do {
        join('', map {
            "    $_->{id} => '$avatar_urls->{ $_->{id} }',\n"
        } @data)
    } . ");"
    # end code run at build time
}}
# end data generated at build time

sub authors { wantarray ? %authors : \%authors }

sub category { 'Nonhuman' }

sub avatar_url { return $avatar_urls{$_[1]} }

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

    my %authorshash    = Acme::CPANAuthors::Nonhuman->authors;
    my $authorshashref = Acme::CPANAuthors::Nonhuman->authors;
    my $category       = Acme::CPANAuthors::Nonhuman->category;

=head1 DESCRIPTION

This class provides a hash of PAUSE IDs and names of non-human CPAN authors.
On the internet, no one knows you're a cat (unless your avatar gives it away)!

=begin html

<div style="text-align:center;padding:0px!important;overflow-y:hidden;
margin-left: auto; margin-right: auto; max-width: 50%">
<!-- this data was generated at build time via __DATA__ section and {{
    use HTML::Entities;
    my @lines = map {
        my $name = encode_entities($_->{name});
        my $title = "$_->{id} ($name), $_->{dists} distribution"
            . ($_->{dists} != 1 ? 's' : '');
        qq{<a href="http://metacpan.org/author/$_->{id}">}
            . q{<span>}
            . q{<img style="margin: 0 5px 5px 0;" width="80" height="80" }
            . qq{src="$avatar_urls->{ $_->{id} }" alt="$_->{id}" title="$title" />}
            . q{</span>}
            . q{</a>}
    } @data;

    # begin template output...
    ref($plugin) . ' ' . $plugin->VERSION . " -->\n"
    . join("<!--\n-->", @lines) . "\n";
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
own distribution, L<Dist::Zilla::Plugin::MungeFile::WithDataSection>.

This module has continued to evolve, as rough edges in bits of the toolchain
are polished.  These improvements include:

=for stopwords metacpan

=for :list
* better HTML rendering in L<metacpan|https://metacpan.org>
* proper encoding handling in L<Dist::Zilla> and many of its plugins
* parsing improvements in L<PPI>
* heuristic refinement in kwalitee metrics in L<Module::CPANTS::Analyse>
* additional interfaces added to L<Acme::CPANAuthors>

=head1 METHODS

=head2 authors

Returns the hash of authors in list context, or a hashref in scalar context.

=head2 category

Returns C<'Nonhuman'>.

=head2 avatar_url

=for stopwords gravatar

Returns the gravatar url of the id shown on L<https://metacpan.org>. Note this
is B<not> necessarily the same result as C<< Acme::CPANAuthors->url($id) >>:
this module queries metacpan directly, where a user may have overridden the
gravatar in their profile; whereas L<Acme::CPANAuthors> (via L<Gravatar::URL>)
performs a lookup on the email address registered with PAUSE.

=head1 SUPPORT

It may well be the case that some of the authors listed here are B<not>
actually non-human, in which case this absolutely must be reported immediately
so this module can be corrected! We of the furry and clawed will not stand for
imposters in our midst.

On the other hand, occasionally new brothers and sisters join the Perl family
and are not recognized here -- please let me know so they can be added to the
list.

=head1 SEE ALSO

=for :list
* L<Acme::CPANAuthors> - the main class to manipulate this one.

=cut
1;
# this list isn't sorted by name but by the date they were added
__DATA__
ETHER
MITHALDU
AKIHITO
BAHOOTYPR
BIGREDS
GAURAV
HIROSE
GLEACH
KAARE
ARUN
ACE
INFRARED
DOLMEN
AKXLIX
ARUNBEAR
IVANWILLS
BBAXTER
ABERNDT
MAXS
FGA
PERLPIE
DAIBA
ORCHEW
VOJ
ROBMAN
SIMCOP
SKINGTON
SZARATE
ZHDA
CARLOS
JTRAMMELL
BENW
NMELNICK
CKRAS
EAST
EUGENEK
ZDM
IANKENT
