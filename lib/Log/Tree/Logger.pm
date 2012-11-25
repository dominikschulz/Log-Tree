package Log::Tree::Logger;
# ABSTRACT: role providing a lazy initialized logger

use 5.010_000;
use mro 'c3';
use feature ':5.10';

use Moose::Role;
use namespace::autoclean;

# use IO::Handle;
# use autodie;
# use MooseX::Params::Validate;
# use Carp;
# use English qw( -no_match_vars );
# use Try::Tiny;
use Log::Tree;

# extends ...
# has ...
has 'logger' => (
    'is'    => 'ro',
    'isa'   => 'Log::Tree',
    'lazy'  => 1,
    'builder' => '_init_logger',
    'handles' => [qw(log)],
);
# with ...
# initializers ...
sub _init_logger {
    my $self = shift;

    my $Logger = Log::Tree::->new($self->_log_facility());

    return $Logger;
}
# requires ...
requires '_log_facility';

# your code here ...

no Moose::Role;

1;

__END__

=head1 NAME

Log::Tree::Logger - Role for a lazy initialized logger.

=cut
