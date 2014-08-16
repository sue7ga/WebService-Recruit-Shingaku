package WebService::Recruit::Shingaku;
use 5.008005;
use strict;
use warnings;
use Mouse;
use WebService::Recruit::Shingaku::Provider;

our $VERSION = "0.01";

has api_key  => (is => 'rw',isa => 'Str',required => 1);
has provider => (is => 'rw',isa => 'WebService::Recruit::Shingaku::Provider',lazy_build => 1);

sub school{
 my $self = shift;
 return $self->provider->dispatch('school',@_);
}

sub subject{
 my $self = shift;
 WebService::Recruit::Shingaku::Provider->dispatch('subject',@_);
}

sub work{
 my $self = shift;
 WebService::Recruit::Shingaku::Provider->dispatch('work',@_);
}

sub license{
 my $self = shift;
 WebService::Recruit::Shingaku::Provider->dispatch('license',@_);
}

sub _build_provider{
  my $self = shift;
  return WebService::Recruit::Shingaku->new(apikey => $self->api_key);
}


1;





__END__

=encoding utf-8

=head1 NAME

WebService::Recruit::Shingaku - It's new $module

=head1 SYNOPSIS

    use WebService::Recruit::Shingaku;

=head1 DESCRIPTION

WebService::Recruit::Shingaku is ...

=head1 LICENSE

Copyright (C) sue7ga.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

sue7ga E<lt>sue77ga@gmail.comE<gt>

=cut

