package App::check_pherkin;

use Moose;

extends 'App::pherkin';

sub _process_arguments {
	my $self = shift;

	my ( $options, @feature_files ) = $self->SUPER::_process_arguments(@_);

	return( { harness => 'Nagios' }, @feature_files );
}

1;

