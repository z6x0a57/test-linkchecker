#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Test::LinkChecker' ) || print "Bail out!
";
}

diag( "Testing Test::LinkChecker $Test::LinkChecker::VERSION, Perl $], $^X" );
