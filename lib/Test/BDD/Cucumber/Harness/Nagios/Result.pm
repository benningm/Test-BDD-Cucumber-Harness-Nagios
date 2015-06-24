package Test::BDD::Cucumber::Harness::Nagios::Result;

use Moose;

extends 'Test::BDD::Cucumber::Model::Result';

has 'nagios_code' => ( 'is' => 'ro', isa => 'Int', required => 1 );

has '+result' => ( lazy => 1, default => 'undefined' );

1;

