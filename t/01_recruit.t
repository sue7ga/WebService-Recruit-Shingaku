use strict;
use warnings;
use Test::More;
use WebService::Recruit::Shingaku;
use WebService::Recruit::Shingaku::Provider;

my $recruit = new WebService::Recruit::Shingaku(api_key => 'ad425e84441a387a');

is($recruit->school(hoge => 'hoge'),'school');

