use strict;
use warnings;

package Dist::Zilla::PluginBundle::DPHYS;
# ABSTRACT: standard Dist::Zilla plugins for DPHYS

use Moose;
with 'Dist::Zilla::Role::PluginBundle::Easy';

use namespace::autoclean;

sub configure {
    my ($self) = @_;

    $self->add_plugins(
        qw(
            GatherDir
            PruneCruft
        ),
        [
            PruneFiles => { filename => 'debian' }
        ],
        qw(
            ManifestSkip
            MetaYAML
            License
            Readme
            PodWeaver
            PkgVersion
            PodVersion
            PodCoverageTests
            PodSyntaxTests
            ExtraTests
            ExecDir
            ShareDir
            AutoPrereqs
            Test::Perl::Critic
            MakeMaker
            Manifest
            FakeRelease
        )
    );
}

__PACKAGE__->meta->make_immutable;
1;

=head1 DESCRIPTION

This bundle sets the standard way to build Perl packages at the ISG of D-PHYS.
It can and shall be updated when needed.  All subsequent builds of new or old
packages will then profit from the improvments.  The intention is to support
reliable quality builds without much effort and to set a standard accross DPHYS
packages that can evolve with time.

This bundle was originally based on L<@Classic|Dist::Zilla::PluginBundle::Classic>.

See C<perldoc -m Dist::Zilla::PluginBundle::DPHYS> for an up-to-date list of
the plugins included.

=head1 SEE ALSO

L<@Classic|Dist::Zilla::PluginBundle::Classic>
L<@Basic|Dist::Zilla::PluginBundle::Basic>

=cut

