package TestApp::Controller::Action::Chained::Priority;
use Moose;
use namespace::autoclean;

BEGIN {extends 'Catalyst::Controller'; }

sub start_sp : Chained('/') PathPart('prio/admin/item') CaptureArgs(1) { }
sub specific : Chained('start_sp') PathPart('edit') Args(0) { }

sub start_g : Chained('/') PathPart('prio') CaptureArgs(4) { }
sub generic : Chained('start_g') PathPart('') Args(0) { }

__PACKAGE__->meta->make_immutable;

1;

