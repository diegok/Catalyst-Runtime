package TestAppChainedPriority;
use Moose;
use namespace::autoclean;

use Catalyst::Runtime;

use Catalyst qw/
    Test::Errors 
    Test::Headers 
/;

extends 'Catalyst';

our $VERSION = '0.01';

TestAppChainedPriority->config(
    name => 'TestAppChainedPriority',
    root => '/some/dir'
);

TestAppChainedPriority->setup();

1;
