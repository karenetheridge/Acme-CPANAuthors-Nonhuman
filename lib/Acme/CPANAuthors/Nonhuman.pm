use strict;
use warnings;
package Acme::CPANAuthors::Nonhuman;
# ABSTRACT: We are non-human CPAN authors

use Acme::CPANAuthors::Register (
    ETHER => 'Karen Etheridge',
    MITHALDU => 'Christian Walde',
    AKIHITO => 'Akihito Takeda',
    BAHOOTYPR => 'Bahootyper',
    BIGREDS => 'Avi Greenbury',
    GAURAV => 'Gaurav Vaidya',
    HIROSE => 'HIROSE Masaaki',
    GLEACH => 'Geoffrey Leach',
    KAARE => 'Kaare Rasmussen',
);

1;
__END__

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

=head1 SUPPORT

=for stopwords irc

Bugs may be submitted through L<the RT bug tracker|https://rt.cpan.org/Public/Dist/Display.html?Name=Acme-CPANAuthors-Nonhuman>
(or L<bug-Acme-CPANAuthors-Nonhuman@rt.cpan.org|mailto:bug-Acme-CPANAuthors-Nonhuman@rt.cpan.org>).
I am also usually active on irc, as 'ether' at C<irc.perl.org>.

It may well be the case that some of the authors listed here are B<not>
actually non-human, in which case this absolutely must be reported immediately
so this module can be corrected! We of the furry and clawed will not stand for
imposters in our midst.

=head1 SEE ALSO

=begin :list

* L<Acme::CPANAuthors> - the main class to manipulate this one.

=end :list

=cut
