# $OpenBSD$
#
# Copyright (c) 2011 Jasper Lievisse Adriaanse <jasper@openbsd.org>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

use strict;
use warnings;
use OpenBSD::PkgAdd;

package OpenBSD::PackageKit::Pkg::Add;

our @ISA=(qw(OpenBSD::PkgAdd));

sub new
{
	my $class = shift;
	my $self = {};
	bless ($self, $class);
	return $self;
}

sub install_package
{
	my $self  = shift;
	my $simulate = shift; # -n
	my $update = shift; # -u
#	$state->{bad} = 0;
	@ARGV = @_;
	$self->handle_options($simulate, $update);
#	return $state->{bad} != 0;
}

1;
