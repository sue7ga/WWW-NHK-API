package WWW::NHK::API::Provider::Common;
use strict;
use warnings;
use utf8;
use Carp;
use JSON;
use WWW::NHK::API;

use constant BASEURI => 'http://api.nhk.or.jp/v1/pg/';

use Data::Dumper;

sub call{
 my($class,$apikey,$subapi) = @_;
 my $content = BASEURI.$subapi.'?key='.$apikey;
 return $content;
}

1;
