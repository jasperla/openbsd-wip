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

package OpenBSD::PackageKit::Categories;

use strict;
use Exporter;
use PackageKit::enums;

our @ISA = qw(Exporter);
our @EXPORT = qw(
	GROUPS
	get_pk_groups
	map_category_to_group
	map_group_to_category
	package_belongs_to_pk_group
);

# Map ports Categories into PackageKit Groups
# Add ie. devel/avr if this means it needs a different group than ../
use constant GROUPS => {
	'archivers' 	=> GROUP_UNKNOWN,
	'astro'		=> GROUP_UNKNOWN,
	'audio'		=> GROUP_MULTIMEDIA,
	'benchmarks'	=> GROUP_UNKNOWN,
	'biology'	=> GROUP_SCIENCE,
	'books'		=> GROUP_DOCUMENTATION,
	'cad'		=> GROUP_ELECTRONICS,
	'chinese'	=> GROUP_LOCALIZATION,
	'comms'		=> GROUP_COMMUNICATION,
	'converters'	=> GROUP_UNKNOWN,
	'databases'	=> GROUP_SERVERS,
	'devel'		=> GROUP_PROGRAMMING,
	'devel/arm-elf'	=> GROUP_ELECTRONICS,
	'devel/avr'	=> GROUP_ELECTRONICS,
	'devel/msp430'	=> GROUP_ELECTRONICS,
	'editors'	=> GROUP_UNKNOWN,
	'education'	=> GROUP_EDUCATION,
	'emulators'	=> GROUP_VIRTUALIZATION,
	'fonts'		=> GROUP_FONTS,
	'games'		=> GROUP_GAMES,
	'geo'		=> GROUP_MAPS,
	'graphics'	=> GROUP_GRAPHICS,
	'hamradio'	=> GROUP_ELECTRONICS,
	'inputmethods'	=> GROUP_LOCALIZATION,
	'japanese'	=> GROUP_LOCALIZATION,
	'java'		=> GROUP_PROGRAMMING,
	'korean'	=> GROUP_LOCALIZATION,
	'lang'		=> GROUP_PROGRAMMING,
	'mail'		=> GROUP_INTERNET,
	'math'		=> GROUP_SCIENCE,
	'misc'		=> GROUP_UNKNOWN,
	'multimeda'	=> GROUP_MULTIMEDIA,
	'net'		=> GROUP_NETWORK,
	'news'		=> GROUP_INTERNET,
	'palm'		=> GROUP_UNKNOWN,
	'pear'		=> GROUP_PROGRAMMING,
	'perl5'		=> GROUP_PROGRAMMING,
	'perl6'		=> GROUP_PROGRAMMING,
	'plan9'		=> GROUP_UNKNOWN,
	'print'		=> GROUP_PUBLISHING,
	'productivity'	=> GROUP_OFFICE,
	'russian'	=> GROUP_LOCALIZATION,
	'security'	=> GROUP_SECURITY,
	'shells'	=> GROUP_SYSTEM,
	'sysutils'	=> GROUP_SYSTEM,
	'telephony'	=> GROUP_COMMUNICATION,
	'textproc'	=> GROUP_UNKNOWN,
	'www'		=> GROUP_INTERNET,
	'x11'		=> GROUP_DESKTOP_OTHER,
	'x11/gnome'	=> GROUP_DESKTOP_GNOME,
	'x11/kde'	=> GROUP_DESKTOP_KDE,
	'x11/xfce'	=> GROUP_DESKTOP_XFCE,
	'x11/nx'	=> GROUP_VIRTUALIZATION,
	'x11/tk'	=> GROUP_PROGRAMMING
};

# XXX:
# ports from x11/kde map to 'x11' first. So looking at GROUP_DESKTOP_KDE
# will also show 'x11' ports. Add extra checks for these groups!

sub get_pk_groups {
	my ($pk_group) = @_;
	my @groups = ();

	foreach(keys %{(GROUPS)}) {
		if(%{(GROUPS)}->{$_} eq $pk_group) {
			push(@groups, $_);
		}
	}

	return @groups;
}

sub map_category_to_group {
	my ($category) = @_;
	if(%{(GROUPS)}->{$category} eq "") {
		return GROUP_UNKNOWN;
	}
	return %{(GROUPS)}->{$category};
}

sub map_group_to_category
{
	my ($group) = @_;
	return get_pk_groups($group);
}

sub package_belongs_to_pk_group
{
	my ($pkg, $pk_group) = @_;
	my @groups = get_pk_groups($pk_group);
	my $pkg_group = $pkg->{category};

	return grep(/$pkg_group/, @groups);
}

1;
