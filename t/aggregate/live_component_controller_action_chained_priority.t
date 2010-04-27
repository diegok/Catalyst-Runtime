#!perl

use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/../lib";

use Test::More;
use Catalyst::Test 'TestAppChainedPriority';

{
    ok( my $response = request('http://localhost/admin/item/33/edit'), 'request for specific' );
    is( $response->header('X-Catalyst-Action'), '/specific/action', 'Executed the right action' );
}

{
    ok( my $response = request('http://localhost/1/2/3/4'), 'request for generic' );
    is( $response->header('X-Catalyst-Action'), '/generic/action', 'Executed the right action' );
}

done_testing;
