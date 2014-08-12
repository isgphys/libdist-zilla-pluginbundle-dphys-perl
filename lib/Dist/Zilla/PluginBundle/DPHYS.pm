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

=for :list
* L<Dist::Zilla::Plugin::GatherDir>
* L<Dist::Zilla::Plugin::PruneCruft>
* L<Dist::Zilla::Plugin::ManifestSkip>
* L<Dist::Zilla::Plugin::MetaYAML>
* L<Dist::Zilla::Plugin::License>
* L<Dist::Zilla::Plugin::Readme>
* L<Dist::Zilla::Plugin::PodWeaver>
* L<Dist::Zilla::Plugin::PkgVersion>
* L<Dist::Zilla::Plugin::PodVersion>
* L<Dist::Zilla::Plugin::PodCoverageTests>
* L<Dist::Zilla::Plugin::PodSyntaxTests>
* L<Dist::Zilla::Plugin::ExtraTests>
* L<Dist::Zilla::Plugin::ExecDir>
* L<Dist::Zilla::Plugin::ShareDir>
* L<Dist::Zilla::Plugin::AutoPrereqs>
* L<Dist::Zilla::Plugin::Test::Perl::Critic>
* L<Dist::Zilla::Plugin::MakeMaker>
* L<Dist::Zilla::Plugin::Manifest>
* L<Dist::Zilla::Plugin::FakeRelease>

=head1 SEE ALSO

L<@Classic|Dist::Zilla::PluginBundle::Classic>
L<@Basic|Dist::Zilla::PluginBundle::Basic>

=cut

