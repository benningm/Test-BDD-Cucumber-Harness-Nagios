package App::check_pherkin;

use Moose;

# VERSION
# ABSTRACT: check_pherkin command interface

=head1 Description

Extends the App::Pherkin command inteface for nagios.

See L<check_pherkin> for more info.

=cut

extends 'App::pherkin';

sub _process_arguments {
	my $self = shift;

	my ( $options, @feature_files ) = $self->SUPER::_process_arguments(@_);

	return( { harness => 'Nagios' }, @feature_files );
}

1;

