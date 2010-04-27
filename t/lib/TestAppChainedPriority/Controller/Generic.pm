package TestAppChainedPriority::Controller::Generic;
use Moose;
use namespace::autoclean;

BEGIN {extends 'Catalyst::Controller'; }

sub start : Chained('/') PathPart('') CaptureArgs(4) { }
sub action : Chained('start') PathPart('') Args(0) { }

__PACKAGE__->meta->make_immutable;

1;
