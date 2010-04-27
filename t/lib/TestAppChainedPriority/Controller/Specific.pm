package TestAppChainedPriority::Controller::Specific;
use Moose;
use namespace::autoclean;

BEGIN {extends 'Catalyst::Controller'; }

sub start : Chained('/') PathPart('admin/item') CaptureArgs(1) { }
sub action : Chained('start') PathPart('edit') Args(0) { }

__PACKAGE__->meta->make_immutable;

1;
