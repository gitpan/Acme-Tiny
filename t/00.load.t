use Test::More tests => 4;

BEGIN {
    use_ok( 'Acme::Tiny' );
}

diag( "Testing Acme::Tiny $Acme::Tiny::VERSION" );

ok(Acme::Tiny->VERSION == .4, 'Acme::Tiny->VERSION()');
ok($Acme::Tiny::VERSION == .4, '$Acme::Tiny::VERSION');

package My::test;
@ISA = ('Acme::Tiny');
package main;

ok(My::test->isa('Acme::Tiny'), 'Can be a base class (Acme.pm functionality subset)');