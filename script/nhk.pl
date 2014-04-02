use strict;
use warnings;
use utf8;
use Encode;
use Carp;
use FindBin;
use lib "$FindBin::Bin/../lib";
use WWW::NHK::API;

my $nhk = WWW::NHK::API->new({apikey => 'UqCm6EDFh00qSArYkKw4MQo9XAvPMiHm'});

use Data::Dumper;

my $arg = $nhk->now_on_air({area => '130',service => 'g1'});

print Dumper $arg;

