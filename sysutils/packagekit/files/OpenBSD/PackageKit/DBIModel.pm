# $OpenBSD$
#
# Copyright (c) 2008, 2009 Landry Breuil <landry@openbsd.org>
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

# Originally written for pkg_mgr (http://rhaalovely.net/pkg_mgr/ ) by
# Landry Breuil. Adapted for PackageKit by Jasper Lievisse Adriaanse.

use warnings;
use strict;

# borrowed from pkg_info
package OpenBSD::PackingElement;
sub sum_up
{
	my ($self, $rsize) = @_;
	if (defined $self->{size}) {
		$$rsize += $self->{size};
	}
}

package OpenBSD::PackageKit::DBIModel;
use DBI;
use OpenBSD::PackageInfo;
use OpenBSD::PackingList;
use OpenBSD::PackageRepository::Installed;
sub new
{
	my $class = shift;
	my $self = {};
	bless ($self, $class);
	$self->init;
	return $self;
}

sub init
{
	my $self = shift;
	$self->{ports} = undef; # key=port id
	$self->{categories} = undef; # key=category id, value=category name
	$self->{installed} = (); # list of installed ids
	$self->{installed_repo} = OpenBSD::PackageRepository::Installed->new;
	$self->{orphaned} = (); # list of orphaned ids
	$self->{portslist} = undef; # key=category id, value=port id array
	$self->{dbh}->disconnect if defined $self->{dbh};
	$self->{dbh} = DBI->connect("dbi:SQLite:/usr/local/share/sqlports-compact");
	$self->get_allports;
	$self->update_installed;
}

sub get_categories
{
	my $self = shift;
	$self->update_categories unless $self->{categories};
	return $self->{categories};
}

sub get_category_name
{
	my ($self, $cat) = @_;
	return $self->{categories}{$cat};
}

sub get_category_id
{
	my ($self, $req) = @_;
	my $sth = $self->{dbh}->prepare("SELECT keyref FROM CategoryKeys WHERE value = ?");
	$sth->bind_param(1, "$req");
	return $self->{dbh}->selectcol_arrayref($sth);	
}

# my @cat = @{$m->get_category_for_port('211')};
# print "$cat[0]"
sub get_category_for_port
{
	my ($self, $req) = @_;
	my $sth = $self->{dbh}->prepare("SELECT ck.value FROM Categories c, CategoryKeys ck WHERE c.value = ck.keyref AND c.fullpkgpath = ? LIMIT 1");
	$sth->bind_param(1, "$req");
	return $self->{dbh}->selectcol_arrayref($sth);
}

sub update_categories
{
	my $self = shift;
	my $rslt = $self->{dbh}->selectall_arrayref("SELECT keyref, value FROM CategoryKeys");
	%{$self->{categories}} = map {$_->[0] => $_->[1]} @$rslt;
	$self->{categories}{0} = "All";
	$self->{categories}{-1} = "Installed";
	$self->{categories}{-2} = "Orphaned";
}

sub get_allports
{
	my $self = shift;
	$self->update_allports unless $self->{allports};
	return $self->{allports};
}

sub pkg_is_installed
{
	my ($self, $id) = @_;
	return grep /^$id$/, @{$self->{installed}};
}

sub get_ports_for_category
{
	my ($self, $cat) = @_;
	if ($cat eq 0) {
		return [keys %{$self->{allports}}];
	} elsif ($cat eq -1) {
		$self->update_installed() unless $self->{installed};
		return \@{$self->{installed}};
	} elsif ($cat eq -2) {
		$self->update_installed() unless $self->{orphaned};
		return \@{$self->{orphaned}};
	} else {
		$self->update_ports_for_category($cat) unless defined $self->{portslist}{$cat};
		return $self->{portslist}{$cat};
	}
}

sub get_ports_matching_keyword
{
	my ($self, $req) = @_;
	my $sth = $self->{dbh}->prepare("SELECT fullpkgpath FROM Ports WHERE fullpkgname LIKE ? OR comment LIKE ?");
	$sth->bind_param(1, "%$req%");
	$sth->bind_param(2, "%$req%");
	return $self->{dbh}->selectcol_arrayref($sth);
}

sub get_ports_matching_name
{
	my ($self, $req) = @_;
	my $sth = $self->{dbh}->prepare("SELECT fullpkgpath FROM Ports WHERE fullpkgname LIKE ? OR distname LIKE ?");
	$sth->bind_param(1, "%$req%");
	$sth->bind_param(2, "%$req%");
	return $self->{dbh}->selectcol_arrayref($sth);
}

sub get_ports_matching_exact_name
{
	my ($self, $req) = @_;
	my $sth = $self->{dbh}->prepare("SELECT fullpkgpath FROM Ports WHERE fullpkgname LIKE ?");
	$sth->bind_param(1, "$req%");
	return $self->{dbh}->selectcol_arrayref($sth);
}

sub get_ports_matching_details
{
	my ($self, $req) = @_;
	my $sth = $self->{dbh}->prepare("SELECT fullpkgpath FROM Ports WHERE fullpkgname LIKE ? OR comment LIKE ? OR distname LIKE ? OR homepage LIKE ?");
	$sth->bind_param(1, "%$req%");
	$sth->bind_param(2, "%$req%");
	$sth->bind_param(3, "%$req%");
	$sth->bind_param(4, "%$req%");
	return $self->{dbh}->selectcol_arrayref($sth);
}

sub get_port_matching_fullpkgname
{
	my ($self, $req) = @_;
	my $sth = $self->{dbh}->prepare("SELECT fullpkgpath FROM Ports WHERE fullpkgname LIKE ? LIMIT 1");
	$sth->bind_param(1, "%$req%");
	return $self->{dbh}->selectcol_arrayref($sth);
}

sub get_port_matching_fullpkgpath
{
	my ($self, $req) = @_;
	my $sth = $self->{dbh}->prepare("SELECT fullpkgname FROM Ports WHERE fullpkgpath = ? LIMIT 1");
	$sth->bind_param(1, "$req");
	return $self->{dbh}->selectcol_arrayref($sth);
}

sub update_ports_for_category
{
	my ($self, $cat) = @_;
	my $sth = $self->{dbh}->prepare("SELECT fullpkgpath FROM Categories WHERE value = ?");
	$sth->bind_param(1, $cat);
	$self->{portslist}{$cat} = $self->{dbh}->selectcol_arrayref($sth);
}

sub get_info_for_port
{
	my ($self, $id) = @_;
	$self->update_info_for_port($id) unless $self->{allports}{$id}{descr};
	return $self->{allports}{$id};
}

sub get_pkgname_for_port
{
	my ($self, $id) = @_;
	return $self->{allports}{$id}{fullpkgname};
}

sub get_all_depends_for_port
{
	my ($self, $req) = @_;
	my $sth = $self->{dbh}->prepare("SELECT DISTINCT dependspath FROM depends WHERE fullpkgpath = ?");
	$sth->bind_param(1, "$req");
	return $self->{dbh}->selectcol_arrayref($sth);
}

sub update_allports
{
	my $self = shift;
	my $rslt = $self->{dbh}->selectall_arrayref("SELECT p.fullpkgpath, p.fullpkgname, p.comment, p.homepage, p.maintainer, a.value FROM Ports p, Arch a WHERE p.pkg_arch = a.keyref");
	%{$self->{allports}} = map {$_->[0], {
		fullpkgname => $_->[1],
		comment => defined $_->[2] ? $_->[2] : "no comment available",
		homepage => $_->[3],
		maintainer => $_->[4],
		arch => $_->[5],
		}} @$rslt;
	# get real fullpkgpath
	$rslt = $self->{dbh}->selectcol_arrayref("SELECT id, fullpkgpath FROM Paths WHERE id IN (SELECT fullpkgpath FROM Ports)", { Columns=>[1,2] });
	my %h = @$rslt;
	$self->{allports}{$_}{fullpkgpath} = $h{$_} foreach (keys %h);
}

sub update_info_for_port
{
	my ($self, $id) = @_;
	my $t;
	my $sth = $self->{dbh}->prepare("SELECT value FROM Email WHERE keyref = ?");
	# previous value was maintainer id
	$sth->bind_param(1, $self->{allports}{$id}{maintainer});
	$self->{allports}{$id}{maintainer} = ($self->{dbh}->selectrow_array($sth))[0];
	$sth = $self->{dbh}->prepare("SELECT value FROM Descr WHERE fullpkgpath = ?");
	$sth->bind_param(1, $id);
	$self->{allports}{$id}{descr} = ($self->{dbh}->selectrow_array($sth))[0];
	$sth = $self->{dbh}->prepare("SELECT fullpkgpath FROM Paths WHERE id IN (SELECT dependspath FROM depends WHERE fullpkgpath = ? and type = 0)");
	$sth->bind_param(1, $id);
	$t = $self->{dbh}->selectcol_arrayref($sth);
	$self->{allports}{$id}{lib_depends} = "@{$t}" if defined @{$t}[0];
	$sth = $self->{dbh}->prepare("SELECT fullpkgpath FROM Paths WHERE id IN (SELECT dependspath FROM depends WHERE fullpkgpath = ? and type = 1)");
	$sth->bind_param(1, $id);
	$t = $self->{dbh}->selectcol_arrayref($sth);
	$self->{allports}{$id}{run_depends} = "@{$t}" if defined @{$t}[0];
	if ($self->pkg_is_installed($id)) {
		my $handle = $self->{installed_repo}->find($self->{allports}{$id}{fullpkgname});
		my $plist = $handle->plist;
		# compute size, taken from pkg_info
		my $sz = 0;
		$plist->sum_up(\$sz);
		$self->{allports}{$id}{size} = int($sz/1024)."KB";
		# If ports are installed but haven't been inserted in sqlports,
		# some fields are undefined, like arch.
		$self->{allports}{$id}{arch} //= "";
		unless (defined $self->{allports}{$id}{used_by}) {
			require OpenBSD::RequiredBy;
			my $o = OpenBSD::RequiredBy->new($self->{allports}{$id}{fullpkgname});
			$self->{allports}{$id}{used_by} = join(' ',$o->list) if ($o->list != 0);
		}
	}
}

sub update_installed
{
	my ($self) = @_;
	require OpenBSD::RequiredBy;
	undef $self->{orphaned};
	undef $self->{installed};
	# joined query is here to be sure it's a real port, not a previous path which became the basis for a multipackage
	my $rslt = $self->{dbh}->selectcol_arrayref("SELECT paths.fullpkgpath,paths.id FROM Paths INNER JOIN Ports ON ports.fullpkgpath=paths.id", { Columns=>[1,2] });
	# make it a temp map{pkgpath}=id
	my %path_to_id = @$rslt;
	my $instpkgname;
	my @tab =installed_packages(1);
	my $i = 0;
	foreach(@tab) {
		my $handle = $self->{installed_repo}->find($_);
		my $plist = $handle->plist(\&OpenBSD::PackingList::ExtraInfoOnly);
		#match on a pkgpath
		my $fullpkgpath = $plist->{extrainfo}->{subdir};
		$i++;
		$instpkgname = $_;
		my $id = $path_to_id{$fullpkgpath} // 0;
		unless ($id) {
			#find if it is already in allports given $fullpkgpath
			foreach (keys %{$self->{allports}}) {
				if ($self->{allports}{$_}{fullpkgpath} eq $fullpkgpath) {
					$id = $_;
					last;
				}
			}
			#if not found add to the end of ports
			unless ($id) {
				# yeeesh.. gotta find an unused id.
				$id = 10000;
				$id++ while (defined $self->{allports}{$id});
				$self->{allports}{$id}{fullpkgpath} = $fullpkgpath;
				if (open my $fh, '<', $handle->info.DESC) {
					my $descr;
					$self->{allports}{$id}{comment} = <$fh>;
					chomp $self->{allports}{$id}{comment};
					while(<$fh>) {
						chomp;
						$self->{allports}{$id}{maintainer} = $1 if /Maintainer: (.*)/;
						$self->{allports}{$id}{homepage} = $1 if /WWW: (\S+)/;
						$descr .= "$_\n" unless defined $self->{allports}{$id}{maintainer};
					}
					close ($fh);
					chomp $descr;
					chomp $descr;
					$self->{allports}{$id}{descr} = $descr;
					my $sz = 0;
					# need full plist for sum_up
					$plist = $handle->plist;
					$plist->sum_up(\$sz);
					$self->{allports}{$id}{size} = int($sz/1024)."KB";
				}
				$self->{allports}{$id}{lib_depends} = "unknown";
				$self->{allports}{$id}{run_depends} = "unknown";
			}
		}

		push @{$self->{installed}}, $id;

		$self->{allports}{$id}{fullpkgname} = $instpkgname;
		my $o = OpenBSD::RequiredBy->new($instpkgname);
		if ($o->list == 0) {
			push @{$self->{orphaned}}, $id;
		} else {
			$self->{allports}{$id}{used_by} = join(' ',$o->list)
		}
	}
}
1;
