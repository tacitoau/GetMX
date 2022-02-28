use Net::DNS;
use strict;
my ($host, $res, @mx);
$host = shift or die "Usage: $0 hostname\n";
$res = Net::DNS::Resolver->new();
@mx = mx($res, $host);
print "\n";
foreach my $record(@mx){
    print $record->preference, " ", $record->exchange, "\n";
}
print "\n";
