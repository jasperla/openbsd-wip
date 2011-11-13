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

use warnings;
use strict;

package OpenBSD::PackageKit::Pkg;
use OpenBSD::PackageKit::Pkg::Add;
use OpenBSD::PackageKit::Pkg::Delete;

sub new
{
	my $class = shift;
	my $view = shift;
	my $self = {};
	bless ($self, $class);
	$self->{install} = OpenBSD::PackageKit::Pkg::Add->new();
	$self->{remove} = OpenBSD::PackageKit::Pkg::Delete->new();
	return $self;
}

sub install
{
	my $self = shift;
	my $really = shift; # -n
	my $update = shift; # -u
	return $self->{install}->install_package($really, $update, @_);
}

sub remove
{
	my $self = shift;
	my $really = shift;
	return $self->{remove}->remove_package($really, @_);
}

1;
