package WWW::NHK::API::Provider;

use WWW::NHK::API::Provider::List;
use WWW::NHK::API::Provider::Genre;
use WWW::NHK::API::Provider::Info;
use WWW::NHK::API::Provider::Nowonair;

use strict;
use warnings;

use Data::Dumper;

sub dispatch{
 my($self,$api_name,$arg) = @_;
 my $class = __PACKAGE__.'::'.ucfirst($api_name);
 $class->call($arg);
}

1;


