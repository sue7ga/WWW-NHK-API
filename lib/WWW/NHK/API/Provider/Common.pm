package WWW::NHK::API::Provider::Common;
use strict;
use warnings;
use utf8;
use Carp;
use JSON;

use constant BASEURI => 'http://api.nhk.or.jp/v1';

sub call{
 my($class,$subapi) = @_;

 return $subapi;

}



1;
