package Sub::Spec::GetArgs::Hash;

use 5.010;
use strict;
use warnings;

our $VERSION = '0.02'; # VERSION

our %SPEC;

1;
#ABSTRACT: Get subroutine arguments %args from hash (%args) :)


=pod

=head1 NAME

Sub::Spec::GetArgs::Hash - Get subroutine arguments %args from hash (%args) :)

=head1 VERSION

version 0.02

=head1 SYNOPSIS

 # nothing to see here

=head1 DESCRIPTION

B<NOTICE>: This module and the L<Sub::Spec> standard is deprecated as of Jan
2012. L<Rinci> is the new specification to replace Sub::Spec, it is about 95%
compatible with Sub::Spec, but corrects a few issues and is more generic.
C<Perinci::*> is the Perl implementation for Rinci and many of its modules can
handle existing Sub::Spec sub specs.

This is an empty distribution. Created just as a reminder that you don't need to
do anything if you already have a hash. Sub::Spec-following subroutines already
accept hash as arguments by default. (You'd think that this reminder is
unnecessary, but I've known to think stranger things and forget even simpler
facts :))

Each argument in the args clause can specify aliases (using the C<arg_aliases>
clause), example:

 $SPEC{myfunc} = {
     ...
     args => {
         check_content => [bool => {
             ...
             arg_aliases => {
                cc => {},
             },
         }],
         ...
    },
 };

But note that these aliases are meant only for command-line applications, parsed
by L<Sub::Spec::GetArgs::Argv>. So this is valid (in command-line):

 % script.pl --cc

but this is not recognized (in Perl):

 my $res = myfunc(cc => 1); # only myfunc(check_content => 1) is recognized

=head1 SEE ALSO

L<Sub::Spec>

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

