package WWW::NHK::API::Provider::Common;
use strict;
use warnings;
use utf8;
use Carp;
use JSON;

use constant BASEURI => 'http://api.nhk.or.jp/v1/pg/';

use Data::Dumper;

sub call{
 my($class,$subapi) = @_;
 my $content = BASEURI.$subapi.'?key=UqCm6EDFh00qSArYkKw4MQo9XAvPMiHm';
 return $content;
}


1;
