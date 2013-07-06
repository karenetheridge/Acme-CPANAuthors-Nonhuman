# NAME

Acme::CPANAuthors::Nonhuman - We are non-human CPAN authors

# VERSION

version 0.003

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

<div style="text-align:center;padding:5px">
<a href="http://metacpan.org/author/ETHER"><img src="http://www.gravatar.com/avatar/bdc5cd06679e732e262f6c1b450a0237?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Fbdc5cd06679e732e262f6c1b450a0237" alt="ETHER" /></a>
<a href="http://metacpan.org/author/MITHALDU"><img src="http://www.gravatar.com/avatar/f77c2e7572ed0efa7bb025111330e1b2?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Fd9c28af939032ab0c30fd7be8fdc1040" alt="MITHALDU" /></a>
<a href="http://metacpan.org/author/DOLMEN"><img src="http://www.gravatar.com/avatar/70d9b050bfe39350c234d710fadfcd39?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F70d9b050bfe39350c234d710fadfcd39" alt="DOLMEN" /></a>
<a href="http://metacpan.org/author/IVANWILLS"><img src="http://www.gravatar.com/avatar/5660261bf7fc03555e8d0f27b09dc6e5?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Fc668586858d59a94f3eb761903175f27" alt="IVANWILLS" /></a>
<a href="http://metacpan.org/author/HIROSE"><img src="http://www.gravatar.com/avatar/c1ccb81aa27de309933384652c7b0635?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F9fdc92e131d7950e81895ca892b7a384" alt="HIROSE" /></a>
<br />
<a href="http://metacpan.org/author/KAARE"><img src="http://www.gravatar.com/avatar/a1bde393aed9fd6987f0116572d052a9?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F4981bb322567b621afe038246f4dce1a" alt="KAARE" /></a>
<a href="http://metacpan.org/author/BBAXTER"><img src="http://www.gravatar.com/avatar/af7986efb2374332f4babfaaef3b55d4?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Faf7986efb2374332f4babfaaef3b55d4" alt="BBAXTER" /></a>
<a href="http://metacpan.org/author/ABERNDT"><img src="http://www.gravatar.com/avatar/888b4060c4844235ed6897de4946f9dd?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F888b4060c4844235ed6897de4946f9dd" alt="ABERNDT" /></a>
<a href="http://metacpan.org/author/ARUNBEAR"><img src="http://www.gravatar.com/avatar/dc46344b5cdbf99fb62291b4eb9c4aef?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Fdc46344b5cdbf99fb62291b4eb9c4aef" alt="ARUNBEAR" /></a>
<a href="http://metacpan.org/author/GLEACH"><img src="http://www.gravatar.com/avatar/e9df76d28529b16f451a40a614bceef4?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F05cb19d7843c358211bfdc98be476b68" alt="GLEACH" /></a>
<br />
<a href="http://metacpan.org/author/MAXS"><img src="http://www.gravatar.com/avatar/19133cd02103a14b43153d280be27eb5?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F55768f8a3f6cbfde7396a0a34b590181" alt="MAXS" /></a>
<a href="http://metacpan.org/author/AKIHITO"><img src="http://www.gravatar.com/avatar/6192f8305c77cb9caa979b14fae75d24?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F3a1bdee47e9fdca1cdf3ce4f38651ba2" alt="AKIHITO" /></a>
<a href="http://metacpan.org/author/FGA"><img src="http://www.gravatar.com/avatar/926171279c9a7b096d08ab9266ee2cec?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Fa1a232556694ed753ac491703b7df184" alt="FGA" /></a>
<a href="http://metacpan.org/author/ACE"><img src="http://www.gravatar.com/avatar/d5c9552ccbcd66a7c8c6267897d6259a?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F93433fe8773dc3ead93f928015e3fb13" alt="ACE" /></a>
<a href="http://metacpan.org/author/AKXLIX"><img src="http://www.gravatar.com/avatar/cfa98d13d05ead9d898af83db46da6a9?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F22376afdd53ef1adc944c7168349cd8d" alt="AKXLIX" /></a>
<br />
<a href="http://metacpan.org/author/ARUN"><img src="http://www.gravatar.com/avatar/58a4c5847a92a575a3d9230f46668623?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F8a7e477f0a86af02355043e612baad57" alt="ARUN" /></a>
<a href="http://metacpan.org/author/BAHOOTYPR"><img src="http://www.gravatar.com/avatar/462c94d33889f90d604d913da9075bf6?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F297175ea2bf4953bce22d24a1aacc102" alt="BAHOOTYPR" /></a>
<a href="http://metacpan.org/author/BIGREDS"><img src="http://www.gravatar.com/avatar/0d456579ab7f4822420e87d6159bc9fa?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F0d456579ab7f4822420e87d6159bc9fa" alt="BIGREDS" /></a>
<a href="http://metacpan.org/author/DAIBA"><img src="http://www.gravatar.com/avatar/f64fa36a1fe3c8e7b52cf6e5a21da302?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Ff64fa36a1fe3c8e7b52cf6e5a21da302" alt="DAIBA" /></a>
<a href="http://metacpan.org/author/INFRARED"><img src="http://www.gravatar.com/avatar/a6c59d0a6c1f0042e922ffc033710de0?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Fa6c59d0a6c1f0042e922ffc033710de0" alt="INFRARED" /></a>
<br />
<a href="http://metacpan.org/author/KIBI"><img src="http://www.gravatar.com/avatar/024161b6e461084f8cf8690b521e6800?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F024161b6e461084f8cf8690b521e6800" alt="KIBI" /></a>
<a href="http://metacpan.org/author/GAURAV"><img src="http://www.gravatar.com/avatar/9a3fa34c402691c2f623cba58d01292e?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F9a3fa34c402691c2f623cba58d01292e" alt="GAURAV" /></a>
<a href="http://metacpan.org/author/PERLPIE"><img src="http://www.gravatar.com/avatar/cb9aa3bf6f061556cf82b103c62ebbfe?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Fcb9aa3bf6f061556cf82b103c62ebbfe" alt="PERLPIE" /></a>
<br />

</div>

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

On the other hand, occasionally new brothers and sisters join the Perl family
and are not recognized here -- please let me know so they can be added to the
list.

# SEE ALSO

- [Acme::CPANAuthors](http://search.cpan.org/perldoc?Acme::CPANAuthors) - the main class to manipulate this one.

# AUTHOR

Karen Etheridge <ether@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Karen Etheridge.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
