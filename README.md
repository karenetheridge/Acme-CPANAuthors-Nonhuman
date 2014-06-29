# NAME

Acme::CPANAuthors::Nonhuman - We are non-human CPAN authors

# VERSION

version 0.016

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

<div>
    <div style="text-align:center;padding:0px !important">
    <!-- this data was generated at build time via __DATA__ section and Dist::Zilla::Plugin::MungeFile::WithDataSection 0.007 -->
    <a href="http://metacpan.org/author/ETHER"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/bdc5cd06679e732e262f6c1b450a0237?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Fbdc5cd06679e732e262f6c1b450a0237" alt="ETHER" title="ETHER (Karen Etheridge), 129 distributions" /></span></a>
    <a href="http://metacpan.org/author/VOJ"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/9827ddb7c8cb132375cf55bf7e624250?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Fdcad11c6680a6c59cc31d2bf1b3975e5" alt="VOJ" title="VOJ (Jakob Vo&szlig;), 60 distributions" /></span></a>
    <a href="http://metacpan.org/author/MITHALDU"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/2e8c9bda08fde339f0dc2110d9ddd5c9?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Fd9c28af939032ab0c30fd7be8fdc1040" alt="MITHALDU" title="MITHALDU (Christian Walde), 28 distributions" /></span></a>
    <a href="http://metacpan.org/author/DOLMEN"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/70d9b050bfe39350c234d710fadfcd39?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F70d9b050bfe39350c234d710fadfcd39" alt="DOLMEN" title="DOLMEN (Olivier Mengu&eacute;), 21 distributions" /></span></a>
    <a href="http://metacpan.org/author/IVANWILLS"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/5660261bf7fc03555e8d0f27b09dc6e5?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Fc668586858d59a94f3eb761903175f27" alt="IVANWILLS" title="IVANWILLS (Ivan Wills), 19 distributions" /></span></a>
    <br />
    <a href="http://metacpan.org/author/HIROSE"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/c1ccb81aa27de309933384652c7b0635?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F9fdc92e131d7950e81895ca892b7a384" alt="HIROSE" title="HIROSE (HIROSE Masaaki), 18 distributions" /></span></a>
    <a href="http://metacpan.org/author/BBAXTER"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/af7986efb2374332f4babfaaef3b55d4?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Faf7986efb2374332f4babfaaef3b55d4" alt="BBAXTER" title="BBAXTER (Brad Baxter), 9 distributions" /></span></a>
    <a href="http://metacpan.org/author/KAARE"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/a1bde393aed9fd6987f0116572d052a9?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F4981bb322567b621afe038246f4dce1a" alt="KAARE" title="KAARE (Kaare Rasmussen), 9 distributions" /></span></a>
    <a href="http://metacpan.org/author/ABERNDT"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/888b4060c4844235ed6897de4946f9dd?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F888b4060c4844235ed6897de4946f9dd" alt="ABERNDT" title="ABERNDT (Alan Berndt), 7 distributions" /></span></a>
    <a href="http://metacpan.org/author/CARLOS"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/43d81f6a54ee06bf1190d16f25a2533a?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F43d81f6a54ee06bf1190d16f25a2533a" alt="CARLOS" title="CARLOS (Carlos Lima), 6 distributions" /></span></a>
    <br />
    <a href="http://metacpan.org/author/JTRAMMELL"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/6e8ddfd51613a0bb512abb09b64dafef?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F7fe2f580391d8c9089747010fada9d22" alt="JTRAMMELL" title="JTRAMMELL (John J. Trammell), 6 distributions" /></span></a>
    <a href="http://metacpan.org/author/FGA"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/926171279c9a7b096d08ab9266ee2cec?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Fa1a232556694ed753ac491703b7df184" alt="FGA" title="FGA (Fabrice Gabolde), 5 distributions" /></span></a>
    <a href="http://metacpan.org/author/SIMCOP"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/064ea1cf6dd27118fdbbc2b23d12266f?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F064ea1cf6dd27118fdbbc2b23d12266f" alt="SIMCOP" title="SIMCOP (Ryan Voots), 4 distributions" /></span></a>
    <a href="http://metacpan.org/author/ZOUL"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/6e39b16168a5e2048256079563623bd9?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Fa7757c161bac75ed7abd73517d5354b8" alt="ZOUL" title="ZOUL (Tom&aacute;&scaron; Znamen&aacute;&#x10D;ek), 4 distributions" /></span></a>
    <a href="http://metacpan.org/author/ARUNBEAR"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/dc46344b5cdbf99fb62291b4eb9c4aef?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Fdc46344b5cdbf99fb62291b4eb9c4aef" alt="ARUNBEAR" title="ARUNBEAR (Arun Prasaad), 3 distributions" /></span></a>
    <br />
    <a href="http://metacpan.org/author/GLEACH"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/e9df76d28529b16f451a40a614bceef4?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F05cb19d7843c358211bfdc98be476b68" alt="GLEACH" title="GLEACH (Geoffrey Leach), 3 distributions" /></span></a>
    <a href="http://metacpan.org/author/MAXS"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/19133cd02103a14b43153d280be27eb5?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F55768f8a3f6cbfde7396a0a34b590181" alt="MAXS" title="MAXS (Maxime Soul&eacute;), 3 distributions" /></span></a>
    <a href="http://metacpan.org/author/NMELNICK"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/c74501d7b09d52264ebbceb613b4dafd?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F272258f4d9786e5bb5ea834debfe3b6c" alt="NMELNICK" title="NMELNICK (Nicholas Melnick), 3 distributions" /></span></a>
    <a href="http://metacpan.org/author/AKIHITO"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/6192f8305c77cb9caa979b14fae75d24?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F3a1bdee47e9fdca1cdf3ce4f38651ba2" alt="AKIHITO" title="AKIHITO (Akihito Takeda), 2 distributions" /></span></a>
    <a href="http://metacpan.org/author/AKXLIX"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/cfa98d13d05ead9d898af83db46da6a9?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F22376afdd53ef1adc944c7168349cd8d" alt="AKXLIX" title="AKXLIX (azuma, kuniyuki), 2 distributions" /></span></a>
    <br />
    <a href="http://metacpan.org/author/INFRARED"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/a6c59d0a6c1f0042e922ffc033710de0?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Fa6c59d0a6c1f0042e922ffc033710de0" alt="INFRARED" title="INFRARED (Michael Kroher), 2 distributions" /></span></a>
    <a href="http://metacpan.org/author/SKINGTON"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/ee492c9fb1360f4ef1a59e37a6716d37?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Ffaf48a00fe1d8c7b282435f54f04c747" alt="SKINGTON" title="SKINGTON (Sam Kington), 2 distributions" /></span></a>
    <a href="http://metacpan.org/author/ACE"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/d5c9552ccbcd66a7c8c6267897d6259a?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F93433fe8773dc3ead93f928015e3fb13" alt="ACE" title="ACE (yuichi tsunoda), 1 distribution" /></span></a>
    <a href="http://metacpan.org/author/ARUN"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/8a7e477f0a86af02355043e612baad57?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F8a7e477f0a86af02355043e612baad57" alt="ARUN" title="ARUN (Arun Venkataraman), 1 distribution" /></span></a>
    <a href="http://metacpan.org/author/BAHOOTYPR"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/462c94d33889f90d604d913da9075bf6?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F297175ea2bf4953bce22d24a1aacc102" alt="BAHOOTYPR" title="BAHOOTYPR (Bahootyper), 1 distribution" /></span></a>
    <br />
    <a href="http://metacpan.org/author/BENW"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/83b15a2e27813cc82053326e31662165?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F351511a02e1c1342d2626cb19e2bdd90" alt="BENW" title="BENW (Ben Wilber), 1 distribution" /></span></a>
    <a href="http://metacpan.org/author/BIGREDS"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/0d456579ab7f4822420e87d6159bc9fa?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F0d456579ab7f4822420e87d6159bc9fa" alt="BIGREDS" title="BIGREDS (Avi Greenbury), 1 distribution" /></span></a>
    <a href="http://metacpan.org/author/DAIBA"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/f64fa36a1fe3c8e7b52cf6e5a21da302?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Ff64fa36a1fe3c8e7b52cf6e5a21da302" alt="DAIBA" title="DAIBA (&#x53F0;&#x5834; &#x572D;&#x4E00;), 1 distribution" /></span></a>
    <a href="http://metacpan.org/author/KIBI"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/024161b6e461084f8cf8690b521e6800?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F024161b6e461084f8cf8690b521e6800" alt="KIBI" title="KIBI (Cyril Brulebois), 1 distribution" /></span></a>
    <a href="http://metacpan.org/author/ROBMAN"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/5660261bf7fc03555e8d0f27b09dc6e5?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F755e4df78c1aee18b172a67659ecc870" alt="ROBMAN" title="ROBMAN (Rob Manson), 1 distribution" /></span></a>
    <br />
    <a href="http://metacpan.org/author/GAURAV"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/9a3fa34c402691c2f623cba58d01292e?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F9a3fa34c402691c2f623cba58d01292e" alt="GAURAV" title="GAURAV (Gaurav Vaidya), 0 distributions" /></span></a>
    <a href="http://metacpan.org/author/ORCHEW"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/5660261bf7fc03555e8d0f27b09dc6e5?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F4a66363f9a279ce1a2914752a3b02b17" alt="ORCHEW" title="ORCHEW (Cooper Vertz), 0 distributions" /></span></a>
    <a href="http://metacpan.org/author/PERLPIE"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/cb9aa3bf6f061556cf82b103c62ebbfe?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2Fcb9aa3bf6f061556cf82b103c62ebbfe" alt="PERLPIE" title="PERLPIE (perlpie), 0 distributions" /></span></a>
    <a href="http://metacpan.org/author/SZARATE"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/236a2d411a6c0ed05f9cc9e766b3df4e?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F236a2d411a6c0ed05f9cc9e766b3df4e" alt="SZARATE" title="SZARATE (Santiago Zarate), 0 distributions" /></span></a>
    <a href="http://metacpan.org/author/ZHDA"><span><img style="margin-bottom:5px;margin-right:3px !important" src="http://www.gravatar.com/avatar/404694046d02a4714216c13dce0761f4?d=http%3A%2F%2Fwww.gravatar.com%2Favatar%2F404694046d02a4714216c13dce0761f4" alt="ZHDA" title="ZHDA (Denis Zhdanov), 0 distributions" /></span></a>
    <br />

    </div>
</div>

The original list of authors was determined via
[The Faces of CPAN](http://hexten.net/cpan-faces/).

I wrote this module initially as a reaction to a previous [Acme::CPANAuthors](https://metacpan.org/pod/Acme::CPANAuthors)
distribution that inappropriately highlighted a particular demographic (it has
now since been deleted).  Then, I realized that so much of the content I
wanted to include in this module could be programmatically generated, so I
continued on as an exercise in templating code at build time using raw data in
the `__DATA__` section.  That support code has since been split off into its
own distribution, [Dist::Zilla::Plugin::MungeFile::WithDataSection](https://metacpan.org/pod/Dist::Zilla::Plugin::MungeFile::WithDataSection).

This module has continued to evolve, as rough edges in bits of the toolchain
are polished.  These improvements include:

- better HTML rendering in [metacpan](https://metacpan.org)
- proper encoding handling in [Dist::Zilla](https://metacpan.org/pod/Dist::Zilla) and many of its plugins
- parsing improvements in [PPI](https://metacpan.org/pod/PPI)
- heuristic refinement in kwalitee metrics in [Module::CPANTS::Analyse](https://metacpan.org/pod/Module::CPANTS::Analyse)
- additional interfaces added to [Acme::CPANAuthors](https://metacpan.org/pod/Acme::CPANAuthors)

# SUPPORT

Bugs may be submitted through [the RT bug tracker](https://rt.cpan.org/Public/Dist/Display.html?Name=Acme-CPANAuthors-Nonhuman)
(or [bug-Acme-CPANAuthors-Nonhuman@rt.cpan.org](mailto:bug-Acme-CPANAuthors-Nonhuman@rt.cpan.org)).
I am also usually active on irc, as 'ether' at `irc.perl.org`.

It may well be the case that some of the authors listed here are **not**
actually non-human, in which case this absolutely must be reported immediately
so this module can be corrected! We of the furry and clawed will not stand for
imposters in our midst.

On the other hand, occasionally new brothers and sisters join the Perl family
and are not recognized here -- please let me know so they can be added to the
list.

# SEE ALSO

- [Acme::CPANAuthors](https://metacpan.org/pod/Acme::CPANAuthors) - the main class to manipulate this one.

# AUTHOR

Karen Etheridge <ether@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Karen Etheridge.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

# CONTRIBUTORS

- Carlos Lima <carlos@cpan.org>
- Сергей Романов <sromanov@cpan.org>
