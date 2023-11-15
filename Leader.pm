package Data::MARC::Leader;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_strings);
use Readonly;

Readonly::Array our @BIBLIOGRAPHIC_LEVEL => qw(a b c d i m s);
Readonly::Array our @CHAR_ENCODING_SCHEME => (' ', 'a');
Readonly::Array our @DESCRIPTIVE_CATALOGING_FORM => (' ', 'a', 'c', 'i', 'n', 'u');
Readonly::Array our @ENCODING_LEVEL => (' ', 1, 2, 3, 4, 5, 7, 8, 'u', 'z');
Readonly::Array our @IMPL_DEF_PORTION_LEN => qw(0);
Readonly::Array our @INDICATOR_COUNT => qw(2);
Readonly::Array our @LENGTH_OF_FIELD_PORTION_LEN => qw(4);
Readonly::Array our @MULTIPART_RESORCE_RECORD_LEVEL => (' ', 'a', 'b', 'c');
Readonly::Array our @STARTING_CHAR_POS_PORTION_LEN => qw(5);
Readonly::Array our @STATUS => qw(a c d n p);
Readonly::Array our @SUBFIELD_CODE_COUNT => qw(2);
Readonly::Array our @TYPE => qw(a c d e f g i j k m o p r t);
Readonly::Array our @TYPE_OF_CONTROL => (' ', 'a');
Readonly::Array our @UNDEFINED => ('0');

our $VERSION = 0.01;

has bibliographic_level => (
	is => 'ro',
);

has char_encoding_scheme => (
	is => 'ro',
);

has data_base_addr => (
	is => 'ro',
);

has descriptive_cataloging_form => (
	is => 'ro',
);

has encoding_level => (
	is => 'ro',
);

has impl_def_portion_len => (
	is => 'ro',
);

has indicator_count => (
	is => 'ro',
);

has length => (
	is => 'ro',
);

has length_of_field_portion_len => (
	is => 'ro',
);

has multipart_resource_record_level => (
	is => 'ro',
);

has starting_char_pos_portion_len => (
	is => 'ro',
);

has status => (
	is => 'ro',
);

has subfield_code_count => (
	is => 'ro',
);

has type => (
	is => 'ro',
);

has type_of_control => (
	is => 'ro',
);

has undefined => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check bibliographic_level.
	check_strings($self, 'bibliographic_level', \@BIBLIOGRAPHIC_LEVEL);

	# Check char_encoding_scheme.
	check_strings($self, 'char_encoding_scheme', \@CHAR_ENCODING_SCHEME);

	# Check descriptive_cataloging_form.
	check_strings($self, 'descriptive_cataloging_form',
		\@DESCRIPTIVE_CATALOGING_FORM);

	# Check encoding_level.
	check_strings($self, 'encoding_level', \@ENCODING_LEVEL);

	# Check impl_def_portion_len.
	check_strings($self, 'impl_def_portion_len', \@IMPL_DEF_PORTION_LEN);

	# Check indicator_count.
	check_strings($self, 'indicator_count', \@INDICATOR_COUNT);

	# Check length_of_field_portion_len.
	check_strings($self, 'length_of_field_portion_len',
		\@LENGTH_OF_FIELD_PORTION_LEN);

	# Check multipart_resource_record_level.
	check_strings($self, 'multipart_resource_record_level',
		\@MULTIPART_RESORCE_RECORD_LEVEL);

	# Check starting_char_pos_portion_len.
	check_strings($self, 'starting_char_pos_portion_len',
		\@STARTING_CHAR_POS_PORTION_LEN);

	# Check status.
	check_strings($self, 'status', \@STATUS);

	# Check subfield_code_count.
	check_strings($self, 'subfield_code_count', \@SUBFIELD_CODE_COUNT);

	# Check type.
	check_strings($self, 'type', \@TYPE);

	# Check type_of_control.
	check_strings($self, 'type_of_control', \@TYPE_OF_CONTROL);

	# Check undefined.
	check_strings($self, 'undefined', \@UNDEFINED);

	return;
}

1;

__END__

=pod

=encoding utf8

=head1 NAME

Data::MARC::Leader - Data object for hash type.

=head1 SYNOPSIS

 use Data::MARC::Leader;

 my $obj = Data::MARC::Leader->new(%params);
 my $bibliographic_level = $obj->bibliographic_level;

=head1 METHODS

=head2 C<new>

 my $obj = Data::MARC::Leader->new(%params);

Constructor.

=over 8

=item * C<bibliographic_level>

Flag for activity of hash type.
Possible valuea are 0/1.
Default value is 1 (active).

=back

Returns instance of object.

=head2 C<bibliographic_level>

 my $bibliographic_level = $obj->bibliographic_level;

Get bibliographic level flag.

Returns character.

=head1 ERRORS

 new():
         Parameter 'active' must be a bool (0/1).
                 Value: %s
         Parameter 'id' must be a number.
                 Value: %s
         Parameter 'name' has length greater than '50'.
                 Value: %s
         Parameter 'name' is required.

=head1 EXAMPLE

=for comment filename=create_and_print_marc_leader.pl

 use strict;
 use warnings;

 use Data::MARC::Leader;

 my $obj = Data::MARC::Leader->new(
         'active' => 1,
         'id' => 10,
         'name' => 'SHA-256',
 );

 # Print out.
 print 'Name: '.$obj->name."\n";
 print 'Active: '.$obj->active."\n";
 print 'Id: '.$obj->id."\n";

 # Output:
 # Name: SHA-256
 # Active: 1
 # Id: 10

=head1 DEPENDENCIES

L<Mo>,
L<Mo::utils>.

=head1 REPOSITORY

L<https://github.com/michal-josef-spacek/Data-MARC-Leader>

=head1 AUTHOR

Michal Josef Špaček L<mailto:skim@cpan.org>

L<http://skim.cz>

=head1 LICENSE AND COPYRIGHT

© 2023 Michal Josef Špaček

BSD 2-Clause License

=head1 VERSION

0.01

=cut
