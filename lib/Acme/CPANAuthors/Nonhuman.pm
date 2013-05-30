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

=for comment TODO - generate this automatically using a Pod::Weaver section
=for comment        and by interrogating ourselves for the ID list

=begin html

<center>
<img src="http://www.gravatar.com/avatar/bdc5cd06679e732e262f6c1b450a0237" alt="ETHER" />
<img src="http://www.gravatar.com/avatar/f77c2e7572ed0efa7bb025111330e1b2" alt="MITHALDU" />
<img src="http://www.gravatar.com/avatar/c1ccb81aa27de309933384652c7b0635" alt="HIROSE" />
</br>

<img src="http://www.gravatar.com/avatar/a1bde393aed9fd6987f0116572d052a9" alt="KAARE" />
<img src="http://www.gravatar.com/avatar/e9df76d28529b16f451a40a614bceef4" alt="GLEACH" />
<img src="http://www.gravatar.com/avatar/6192f8305c77cb9caa979b14fae75d24" alt="AKIHITO" />
</br>

<img src="http://www.gravatar.com/avatar/462c94d33889f90d604d913da9075bf6" alt="BAHOOTYPR" />
<img src="http://www.gravatar.com/avatar/0d456579ab7f4822420e87d6159bc9fa" alt="BIGREDS" />
<img src="http://www.gravatar.com/avatar/9a3fa34c402691c2f623cba58d01292e" alt="GAURAV" />
</center>

=end html

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
