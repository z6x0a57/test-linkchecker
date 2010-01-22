package Test::LinkChecker;

use warnings;
use strict;
use WWW::Mechanize;
use Test::More;
use Test::Curl;

=head1 NAME

Test::LinkChecker - The great new Test::LinkChecker!

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

require Exporter;

our @ISA = qw(Exporter);

our %EXPORT_TAGS = ( 'all' => [ qw(links_ok) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(links_ok);

=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use Test::LinkChecker;

    my $foo = Test::LinkChecker->new();
    ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 SUBROUTINES/METHODS

=head2 links_ok

=cut

sub links_ok {
    my ($curl, $url) = @_;

    my $mech = WWW::Mechanize->new();

    $mech->get($url);

    my @links = $mech->links();


    foreach my $link (@links) {
        my $url = $link->url_abs();
        curl_200_ok($curl, $url);
    }

    done_testing();
}

=head1 AUTHOR

z6x0a57, C<< <z6x0a57 at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-test-linkchecker at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Test-LinkChecker>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Test::LinkChecker


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Test-LinkChecker>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Test-LinkChecker>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Test-LinkChecker>

=item * Search CPAN

L<http://search.cpan.org/dist/Test-LinkChecker/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2010 z6x0a57.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1; # End of Test::LinkChecker
