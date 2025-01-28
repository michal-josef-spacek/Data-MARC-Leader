use strict;
use warnings;

use Data::MARC::Leader::Utils;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::MARC::Leader::Utils->new;
my $ret = $obj->desc_encoding_level(' ');
is($ret, 'Full level',
	'Get encoding level (␣ = Full level).');
