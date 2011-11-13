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

package OpenBSD::PackageKit::Tools;

sub new
{
	my $class = shift;
	my $self = {};
	bless ($self, $class);
	return $self;
}

# gnaughty;1.2.5p1;sparc64;openbsd
sub get_package_id
{
	my ($self, $pkg) = @_;
	my ($stem, $version, $flavor) = $self->split_fullpkgname($pkg->{fullpkgname});

	my $arch = $pkg->{arch} // "";
	# If this package is arch-independant, reflect this properly.                   
	$arch =~ s/\*/all/g;

	$version = $version . $flavor if ($flavor);

	return $stem . ";" . $version . ";" . $arch . ";openbsd";
}

# Taken from PkgSpec.pm:parse()
sub split_fullpkgname
{
	my ($self, $p) = @_;
	my ($stem, $version);

	# let's try really hard to find the stem and the flavors
	unless ($p =~ m/^(.*?)\-((?:(?:\>|\>\=|\<\=|\<|\=)?\d|\*)[^-]*)(.*)$/) {
		return undef;
	}
	
	($stem, $version, $flavor) = ($1, $2, $3);
	$stem =~ s/\./\\\./go;
	$stem =~ s/\+/\\\+/go;
	$stem =~ s/\*/\.\*/go;
	$stem =~ s/\?/\./go;
	$stem =~ s/^(\\\.libs)\-/$1\\d*\-/go;
	return ($stem, $version, $flavor);
}

sub pkgid_to_pkg
{
	my ($self, $model, $pkgid) = @_;

	my @p = split((/;/, $pkgid));
	my $pkgname = $p[0] . "-" . $p[1];

	return $model->get_port_matching_fullpkgname($pkgname);
}

1;
