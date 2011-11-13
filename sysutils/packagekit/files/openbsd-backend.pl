#!/usr/bin/perl -w
#
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
local $| = 1; # stdout autoflush

use lib;
use File::Basename;
use File::Temp;
use Data::Dumper;

BEGIN {
	push @INC, dirname($0);
}

use OpenBSD::PackageKit::Categories;
use OpenBSD::PackageKit::DBIModel;
use OpenBSD::PackageKit::Tools;

use PackageKit::enums;
use PackageKit::prints;

# If $url is not set, retrieve it via OpenBSD::PackageLocator::default_path()
# or a handrolled version
# my $r = OpenBSD::PackageKit::Repository->new();
# then we can either set the values with ->set_id() or read them from
# $(confdir)/repos.list. For now we'll just use ftp.eu

my $m = OpenBSD::PackageKit::DBIModel->new();
my $t = OpenBSD::PackageKit::Tools->new();

dispatch_command(\@ARGV);
print "finished\n";

# Dispatcher loop as described in backend-spawn.html
while(<STDIN>) {
	chomp($_);
	my @args = split (/\t/, $_);
	dispatch_command(\@args);
	print "finished\n";
}

sub dispatch_command
{
	my ($args) = @_;

	my $command = shift(@{$args});
	return if (!$command);

	# Keep in same order as PK_BACKEND_OPTIONS
	if ($command eq "get-depends"){
		get_depends($args);
	}
	elsif ($command eq "get-details"){
		get_details($args);
	}
	elsif ($command eq "get-packages"){
		get_packages($args);
	}
	elsif ($command eq "get-repo-list"){
		get_repo_list($args);
	}
	elsif ($command eq "install-packages"){
		install_packages($args);
	}
	elsif ($command eq "refresh-cache"){
		refresh_cache($args);
	}
	elsif ($command eq "resolve"){
		resolve($args);
	}
	elsif ($command eq "search-details"){
		search_details($args);
	}
	elsif ($command eq "search-group"){
		search_group($args);
	}	
	elsif ($command eq "search-name") {
		search_name($args);
	}
	elsif ($command eq "exit") {
		exit 0;
	}
	else {
		return;
	}
}

sub get_depends
{
	my ($args) = @_;

	pk_print_status(PK_STATUS_ENUM_DEP_RESOLVE);

	my @filterstab = split(/;/, @{$args}[0]);
	my @packageidstab = split(/&/, @{$args}[1]);
	my $recursive_option = @{$args}[2] eq "yes" ? 1 : 0;
 
	my @pkgnames;
	foreach (@packageidstab) {
		my @pkgid = split(/;/, $_);
		push(@pkgnames, $pkgid[0]);
	}

	my $p = $m->get_allports();

	foreach my $pkgname (@pkgnames) {
		my @set = @{$m->get_ports_matching_exact_name($pkgname)};
		my %h;
		$h{$_} = $p->{$_} foreach (@set);

		# Sort the keys so we can list the packages in proper order.
		my @values = sort { $h{$a}->{fullpkgname} cmp $h{$b}->{fullpkgname} } keys %h;

		# Now retrieve the dependencies of the port (only one port in @values here)
		my @depends = @{$m->get_all_depends_for_port($values[0])};
		foreach my $dependency (@depends){
			next if $m->pkg_is_installed($dependency);
			my $info = $m->get_info_for_port($dependency);
			# There are empty dependencies?
			if (defined($info->{fullpkgname})) {
				pk_print_package(INFO_AVAILABLE, $t->get_package_id($info), $info->{comment});
			}
		}
	}

	_finished();
}

sub get_details
{
	my ($args) = @_;

	my @packageidstab = split(/&/, @{$args}[0]);

	pk_print_status(PK_STATUS_ENUM_QUERY);

	foreach (@packageidstab) {
		_print_package_details($_);
	}

	_finished();
}

sub get_packages
{
	my ($args) = @_;

	pk_print_status(PK_STATUS_ENUM_QUERY);

	my @filterstab = split(/;/, @{$args}[0]);

	my $p = $m->get_allports();

	# Print the installed packages first
	if(not grep(/^${\FILTER_NOT_INSTALLED}$/, @filterstab)) {
		while ( my ($k, $pkg) = each(%$p) ) {
			next if not $m->pkg_is_installed($k);
			my $info = $m->get_info_for_port($k);
			pk_print_package(INFO_INSTALLED, $t->get_package_id($info), $info->{comment});
		}
	}

	# Now print all available packages
	if(not grep(/^${\FILTER_INSTALLED}$/, @filterstab)) {
		while ( my ($k, $pkg) = each(%$p) ) {
			next if $m->pkg_is_installed($k);
			my $info = $m->get_info_for_port($k);
			pk_print_package(INFO_AVAILABLE, $t->get_package_id($info), $info->{comment});
		}
	}

	_finished();
}

sub get_repo_list
{
	my $id = "openbsd";
	my $description = "OpenBSD Packages";
	my $enabled = "true";
	printf("repo-detail\t%s\t%s\t%s\n", $id, $description, $enabled);
	_finished();
}

# XXX: Doesn't work at all (yet).
sub install_packages
{
	my ($args) = @_;

	my $only_trusted = @{$args}[0];
	my @packageidstab = split(/&/, @{$args}[1]);
  
	my @names;
	foreach (@packageidstab) {
		my @pkg_id = (split(/;/, $_));
		push @names, $pkg_id[0];
	}

#	my $pkg = OpenBSD::PackageKit::Pkg->new();
#	my @args = ();
#	push (@args, "yt");
#	$pkg->install(1, 0, @args);

	_finished();
}

# Our cache is the sqlports database, so we can just init it again and
# force update_installed().
sub refresh_cache
{
	pk_print_status(PK_STATUS_ENUM_DOWNLOAD_PACKAGELIST);
	pk_print_percentage("0");

	pk_print_status(PK_STATUS_ENUM_REFRESH_CACHE);
	pk_print_percentage("50");
	eval {
		$m->init();
	};
	if ($@) {
		pk_print_error(PK_ERROR_ENUM_TRANSACTION_ERROR,
		    "failed to refresh cache\n");
	}
	pk_print_percentage("100");
	_finished();
}

sub resolve
{
	my ($args) = @_;

	pk_print_status(PK_STATUS_ENUM_QUERY);

	my @filterstab = split(/;/, @{$args}[0]);
	my @patterns = split(/&/, @{$args}[1]);

	my $p = $m->get_allports();

	foreach my $query (@patterns) {
		my @set = @{$m->get_ports_matching_name($query)};
		my %h;
		$h{$_} = $p->{$_} foreach (@set);

		# Sort the keys so we can list the packages in proper order.
		my @values = sort { $h{$a}->{fullpkgname} cmp $h{$b}->{fullpkgname} } keys %h;

		# First check if it's installed.
		if(not grep(/^${\FILTER_NOT_INSTALLED}$/, @filterstab)) {
			foreach my $result (@values) {
				next if not $m->pkg_is_installed($result);
				my $info = $m->get_info_for_port($result);
				pk_print_package(INFO_INSTALLED, $t->get_package_id($info), $info->{comment});
			}
			next;
		}

		# Now check if it's available.
		if(not grep(/^${\FILTER_INSTALLED}$/, @filterstab)) {
			foreach my $result (@values) {
				next if $m->pkg_is_installed($result);
				my $info = $m->get_info_for_port($result);
				pk_print_package(INFO_AVAILABLE, $t->get_package_id($info), $info->{comment});
			}
			next;
		}
	}

	_finished();
}

sub search_details
{
	my ($args) = @_;

	pk_print_status(PK_STATUS_ENUM_QUERY);

	my @filterstab = split(/;/, @{$args}[0]);
	my $search_term = @{$args}[1];
  
	my $basename_option = FILTER_BASENAME;
	$basename_option = grep(/$basename_option/, @filterstab);

	my $p = $m->get_allports();

	foreach my $query (@$args) {
		#print Dumper( \$p );
		my @set = @{$m->get_ports_matching_details($query)};
		my %h;
		$h{$_} = $p->{$_} foreach (@set);

		# Sort the keys so we can list the packages in proper order.
		my @values = sort { $h{$a}->{fullpkgname} cmp $h{$b}->{fullpkgname} } keys %h;

		# Search the installed packages first
		foreach my $result (@values) {
			next if not $m->pkg_is_installed($result);
			my $info = $m->get_info_for_port($result);

			pk_print_package(INFO_INSTALLED, $t->get_package_id($info), $info->{comment});
			    
		}

		grep(/^${\FILTER_INSTALLED}$/, @filterstab) 
		    and _finished()
		    and next;

		# Now search all the packages we could install.
		foreach my $result (@values) {
			next if $m->pkg_is_installed($result);
			my $info = $m->get_info_for_port($result);

			pk_print_package(INFO_AVAILABLE, $t->get_package_id($info), $info->{comment});    
		}
	}

	_finished();
}

sub search_group
{
	my ($args) = @_;

	pk_print_status(PK_STATUS_ENUM_QUERY);

	my @filterstab = split(/;/, @{$args}[0]);
	my $pk_group = @{$args}[1];

	my $p = $m->get_allports();

	my @categories = map_group_to_category($pk_group);

	foreach my $category (@categories) {
		my $catid = pop(@{$m->get_category_id($category)});
		my @set = @{$m->get_ports_for_category($catid)};
		my %h;
		$h{$_} = $p->{$_} foreach (@set);
		
		# Sort the keys so we can list the packages in proper order.
		my @values = sort { $h{$a}->{fullpkgname} cmp $h{$b}->{fullpkgname} } keys %h;

		# Search the installed packages first
		foreach my $result (@values) {
			next if not $m->pkg_is_installed($result);
			my $info = $m->get_info_for_port($result);
				pk_print_package(INFO_INSTALLED, $t->get_package_id($info), $info->{comment});
		}

		grep(/^${\FILTER_INSTALLED}$/, @filterstab) 
		    and _finished()
		    and next;

		# Now search all the packages we could install.
		foreach my $result (@values) {
			next if $m->pkg_is_installed($result);
			my $info = $m->get_info_for_port($result);
				pk_print_package(INFO_AVAILABLE, $t->get_package_id($info), $info->{comment});    
		}
	}

	_finished();
}

sub search_name
{
	my ($args) = @_;

	pk_print_status(PK_STATUS_ENUM_QUERY);
	
	my @filterstab = split(/;/, @{$args}[0]);
	my $search_term = @{$args}[1];
  
	my $basename_option = FILTER_BASENAME;
	$basename_option = grep(/$basename_option/, @filterstab);

	my $p = $m->get_allports();

	foreach my $query (@$args) {
		my @set = @{$m->get_ports_matching_name($query)};
		my %h;
		$h{$_} = $p->{$_} foreach (@set);

		# Sort the keys so we can list the packages in proper order.
		my @values = sort { $h{$a}->{fullpkgname} cmp $h{$b}->{fullpkgname} } keys %h;

		# Search the installed packages first
		foreach my $result (@values) {
			next if not $m->pkg_is_installed($result);
			my $info = $m->get_info_for_port($result);

			pk_print_package(INFO_INSTALLED, $t->get_package_id($info), $info->{comment});
			    
		}

		grep(/^${\FILTER_INSTALLED}$/, @filterstab) 
		    and _finished()
		    and next;

		# Now search all the packages we could install.
		foreach my $result (@values) {
			next if $m->pkg_is_installed($result);
			my $info = $m->get_info_for_port($result);

			pk_print_package(INFO_AVAILABLE, $t->get_package_id($info), $info->{comment});    
		}
	}

	_finished();
}

sub _finished
{
	pk_print_status(PK_STATUS_ENUM_FINISHED);
}

sub _print_package_details
{
	my ($pkgid) = @_;

	my $pkg = pop(@{$t->pkgid_to_pkg($m, $pkgid)});

	my $p = $m->get_info_for_port($pkg);

	my $category = pop(@{$m->get_category_for_port($pkg)});

	pk_print_details($pkgid, "N/A", map_category_to_group($category), $p);
}
