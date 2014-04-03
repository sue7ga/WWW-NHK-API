package WWW::NHK::API::Provider::List;

use strict;
use warnings;
use utf8;
use Carp;
use JSON;
use WWW::NHK::API::Provider::Common;
use LWP::UserAgent;

sub call{
 my($self,$apikey,$arg) = @_;

 my $area = $arg->{area};
 my $service = $arg->{service};
 my $date = $arg->{date};

 my $content = WWW::NHK::API::Provider::Common->call(
    $apikey
   ,"list/$area/$service/$date.json"
 );

 my $ua = LWP::UserAgent->new;
 my $res = $ua->get($content);
 my $context = JSON::decode_json($res->{_content});

 return $context->{list};
}

1;


