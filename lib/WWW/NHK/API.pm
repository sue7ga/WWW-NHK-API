package WWW::NHK::API;

use 5.008005;
use strict;
use warnings;
use WWW::NHK::API::Provider;

our $VERSION = "0.01";

sub new{
 my($class,%opt) = @_;
 my $self = {
   apikey => $opt{apikey},
 };
 bless $self,$class;
 $self;
}

sub list{
 my $self = shift;
 WWW::NHK::API::Provider->dispatch('list',@_);
}

sub genre{
 my $self = shift;
 WWW::NHK::API::Provider->dispatch('genre',@_);
}

sub info{
 my $self = shift;
 WWW::NHK::API::Provider->dispatch('info',@_);
}

sub now_on_air{
 my $self = shift;
 WWW::NHK::API::Provider->dispatch('now_on_air',@_);
}


1;
__END__

=encoding utf-8

=head1 NAME

WWW::NHK::API - It's new $module

=head1 SYNOPSIS

    use WWW::NHK::API;

=head1 DESCRIPTION

WWW::NHK::API is ...

=head1 LICENSE

Copyright (C) sue7ga.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

sue7ga E<lt>sue77ga@gmail.comE<gt>

=cut

