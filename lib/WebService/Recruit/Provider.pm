package WebService::Recruit::Shingaku::Provider;

use strict;
use warnings;
use utf8;

has apikey => (is => 'rw',isa => 'Str',required => 1);

sub dispatch{
  my($self,$api_name,$arg) = @_;
  return $api_name;
}

1;
