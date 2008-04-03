use Test::More tests => 3;

BEGIN {
use_ok( 'Acme::Tiny' );
}

diag( "Testing Acme::Tiny $Acme::Tiny::VERSION" );

ok(Acme::Tiny->VERSION == .1, 'Acme::Tiny->VERSION()');
ok($Acme::Tiny::VERSION == .1, '$Acme::Tiny::VERSION');