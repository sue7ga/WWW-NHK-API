package WWW::NHK::API::Provider::Nowonair;

use strict;
use warnings;
use utf8;
use Carp;
use JSON;

sub call{
 my($self,$apikey,$arg) =@_;
 my $area = $arg->{area};
 my $service = $arg->{service};
 my $content = WWW::NHK::API::Provider::Common->call(
    $apikey
   ,"now/$area/$service.json"
 );
 my $ua = LWP::UserAgent->new;
 my $res = $ua->get($content);
 my $context = JSON::decode_json($res->{_content});
 return $context->{nowonair_list};
}

1;
