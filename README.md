# NAME

Acme::CPANAuthors::Nonhuman - We are non-human CPAN authors

# VERSION

version 0.002

# SYNOPSIS

    use Acme::CPANAuthors;
    use Acme::CPANAuthors::Nonhuman;

    my $authors = Acme::CPANAuthors->new('Nonhuman');
    my $number   = $authors->count;
    my @ids      = $authors->id;
    my @distros  = $authors->distributions('ETHER');
    my $url      = $authors->avatar_url('MITHALDU');
    my $kwalitee = $authors->kwalitee('GAURAV');

# DESCRIPTION

This class provides a hash of PAUSE IDs and names of non-human CPAN authors.
On the internet, no one knows you're a cat (unless your avatar gives it away)!

<center>
<img src="http://www.gravatar.com/avatar/bdc5cd06679e732e262f6c1b450a0237" alt="ETHER" />
<img src="http://www.gravatar.com/avatar/f77c2e7572ed0efa7bb025111330e1b2" alt="MITHALDU" />
<img src="http://www.gravatar.com/avatar/c1ccb81aa27de309933384652c7b0635" alt="HIROSE" />
</br>

<img src="http://www.gravatar.com/avatar/4981bb322567b621afe038246f4dce1a" alt="KAARE" />
<img src="http://www.gravatar.com/avatar/e9df76d28529b16f451a40a614bceef4" alt="GLEACH" />
<img src="http://www.gravatar.com/avatar/6192f8305c77cb9caa979b14fae75d24" alt="AKIHITO" />
</br>

<img src="http://www.gravatar.com/avatar/462c94d33889f90d604d913da9075bf6" alt="BAHOOTYPR" />
<img src="http://www.gravatar.com/avatar/0d456579ab7f4822420e87d6159bc9fa" alt="BIGREDS" />
<img src="http://www.gravatar.com/avatar/9a3fa34c402691c2f623cba58d01292e" alt="GAURAV" />
</center>

The original list of authors was determined via
[The Faces of CPAN](http://hexten.net/cpan-faces/).

# SUPPORT

Bugs may be submitted through [the RT bug tracker](https://rt.cpan.org/Public/Dist/Display.html?Name=Acme-CPANAuthors-Nonhuman)
(or [bug-Acme-CPANAuthors-Nonhuman@rt.cpan.org](mailto:bug-Acme-CPANAuthors-Nonhuman@rt.cpan.org)).
I am also usually active on irc, as 'ether' at `irc.perl.org`.

It may well be the case that some of the authors listed here are __not__
actually non-human, in which case this absolutely must be reported immediately
so this module can be corrected! We of the furry and clawed will not stand for
imposters in our midst.

# SEE ALSO

- [Acme::CPANAuthors](http://search.cpan.org/perldoc?Acme::CPANAuthors) - the main class to manipulate this one.

# AUTHOR

Karen Etheridge <ether@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Karen Etheridge.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
