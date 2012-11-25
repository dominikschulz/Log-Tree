package Log::Tree::RequiredLogger;
# ABSTRACT: role providing a required logger attribute

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

# extends ...
# has ...
has 'logger' => (
    'is'    => 'ro',
    'isa'   => 'Log::Tree',
    'required'  => 1,
    'handles' => [qw(log)],
);
# with ...
# initializers ...
# requires ...

# your code here ...

no Moose::Role;

1;

__END__

=head1 NAME

Log::Tree::Logger - Role for a mandatory logger.

=head1 DESCRIPTION

This is a role which provides a required logger attribute
top it's consuming class.

=cut
