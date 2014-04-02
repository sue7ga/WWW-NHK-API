package WWW::NHK::API::Provider;
use WWW::NHK::API::Provider::List;

use strict;
use warnings;

use Data::Dumper;

sub dispatch{
 my($self,$api_name,$arg) = @_;
 
 my $class = __PACKAGE__.'::'.ucfirst($api_name);
 $class->call($arg);
}

1;


