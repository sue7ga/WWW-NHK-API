use strict;
use warnings;
use JSON;
use LWP::UserAgent;

my $url = 'http://api.nhk.or.jp/v1/pg/list/130/g1/2014-04-02.json?key=UqCm6EDFh00qSArYkKw4MQo9XAvPMiHm';

use Data::Dumper;

my $ua = LWP::UserAgent->new;
my $res = $ua->get($url);

my $content = JSON::decode_json($res->{_content});

print Dumper $content;
