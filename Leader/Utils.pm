package Data::MARC::Leader::Utils;

use base qw(Exporter);
use strict;
use warnings;

use Class::Utils qw(set_params);
use Readonly;

Readonly::Hash our %STATUS => (
	'a' => 'Increase in encoding level',
	'c' => 'Corrected or revised',
	'd' => 'Deleted',
	'n' => 'New',
	'p' => 'Increase in encoding level from prepublication',
);
Readonly::Hash our %TYPE => (
	'a' => 'Language material',
	'c' => 'Notated music',
	'd' => 'Manuscript notated music',
	'e' => 'Cartographic material',
	'f' => 'Manuscript cartographic material',
	'g' => 'Projected medium',
	'i' => 'Nonmusical sound recording',
	'j' => 'Musical sound recording',
	'k' => 'Two-dimensional nonprojectable graphic',
	'm' => 'Computer file',
	'o' => 'Kit',
	'p' => 'Mixed materials',
	'r' => 'Three-dimensional artifact or naturally occurring object',
	't' => 'Manuscript language material',
);
Readonly::Hash our %BIBLIOGRAPHIC_LEVEL => (
	'a' => 'Monographic component part',
	'b' => 'Serial component part',
	'c' => 'Collection',
	'd' => 'Subunit',
	'i' => 'Integrating resource',
	'm' => 'Monograph/Item',
	's' => 'Serial',
);

our $VERSION = 0.01;

# Constructor.
sub new {
	my ($class, @params) = @_;

	# Create object.
	my $self = bless {}, $class;

	# Process parameters.
	set_params($self, @params);

	return $self;
}

sub desc_bibliographic_level {
	my ($self, $level_code) = @_;

	return $BIBLIOGRAPHIC_LEVEL{$level_code);
}

sub desc_status {
	my ($self, $status_code) = @_;

	return $STATUS{$status_code);
}

sub desc_type {
	my ($self, $type_code) = @_;

	return $TYPE{$type_code};
}

1;

__END__
