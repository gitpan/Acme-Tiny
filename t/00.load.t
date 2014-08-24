use Test::More tests => 4;

BEGIN {
    use_ok('Acme::Tiny');
}

diag("Testing Acme::Tiny $Acme::Tiny::VERSION");

is( Acme::Tiny->VERSION,  .6, 'Acme::Tiny->VERSION()' );
is( $Acme::Tiny::VERSION, .6, '$Acme::Tiny::VERSION' );

package My::test;
@ISA = ('Acme::Tiny');

package main;

isa_ok( 'My::test', 'Acme::Tiny', 'Can be a base class (Acme.pm functionality subset)' );
