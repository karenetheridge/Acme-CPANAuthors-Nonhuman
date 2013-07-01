use strict;
use warnings;
package inc::MungeWithData;

use Moose;
with (
    'Dist::Zilla::Role::FileMunger',
    'Dist::Zilla::Role::TextTemplate',
    'Dist::Zilla::Role::FileFinderUser' => { default_finders => [ ] },
);

use Module::Metadata;
use namespace::autoclean;

sub munge_files
{
    my $self = shift;
    $self->munge_file($_) for @{ $self->found_files };
}

sub munge_file
{
    my ($self, $file) = @_;

    my $content = $self->fill_in_string(
        $file->content,
        {
            dist => \($self->zilla),
            DATA => \($self->_data_from_file($file)),
        },
    );

    $self->log_debug([ 'MungeWithData updating contents of %s in memory', $file->name ]);
    $file->content($content);
}

sub _data_from_file
{
    my ($self, $file) = @_;

    my $pkg = Module::Metadata->new_from_file($file->name)->name;

    # note: DATA is a global, and if code ever tries to read from it more than
    # once, the second time will fail -- if this is a problem, we will need to
    # import Data::Section into the package and then have everything use that
    # instead (and patch to handle reading from other packages), or seek
    # to position 0 and find __DATA__ again -- also see Data::Section::Simple

    require $file->name;
    my $dh = do { no strict 'refs'; \*{"$pkg\::DATA"} };
    # TODO: check defined fileno *$dh ?

    my $data = '';
    while (my $line = <$dh>)
    {
        last if $line =~ /^__END__/;
        $data .= $line;
    }

    return $data;
}

__PACKAGE__->meta->make_immutable;
__END__

=pod

=head1 TODO

save this as its own dist! with tests!

will need to document the tricks of the trade for inserting template code inside Perl code,
if not modifying pod

=cut
