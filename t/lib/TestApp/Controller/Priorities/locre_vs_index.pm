package TestApp::Controller::Priorities::locre_vs_index;

use strict;
use base 'Catalyst::Controller';

sub index :Private { $_[1]->res->body( 'index' ) }

1;
