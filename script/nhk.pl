use strict;
use warnings;
use utf8;
use Encode;
use Carp;
use FindBin;
use lib "$FindBin::Bin/../lib";
use WWW::NHK::API;

my $nhk = WWW::NHK::API->new(apikey => 'UqCm6EDFh00qSArYkKw4MQo9XAvPMiHm');

use Data::Dumper;

my $arg =  $nhk->list({'area'=>'130','service'=>'g1','date' =>'2014-04-02'});

print Dumper $arg;

