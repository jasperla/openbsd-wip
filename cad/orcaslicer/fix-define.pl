#!/usr/bin/perl
use v5.36;

die "usage: $0 /path/to/src\n" unless @ARGV;

use File::Copy qw< cp   >;
use File::Find qw< find >;

find sub { fix_defines($File::Find::name) }, @ARGV;

sub fix_defines($file) {
    return unless -f $file;
    return if $file =~ /\.orig/i;

    #say $file;
    my $modified = !!0;
    open my $fh, '+<', $file or die "Unable to open $file: $!";
    my @content = readline $fh;
    for (@content) {
	s/\s*(?:\|\||\&\&)\s+defined\(__OpenBSD__\)//;

        if (/^#ifdef\s+(__Linux__)/i) {
            $_        = "#if defined($1) || defined(__OpenBSD__)\n";
            $modified = !!1;
        }
        elsif(/#if .*(?<invert>!?)defined\(__Linux__\)(?:\s+(<compare>\&\&|\|\|))?/i) {
	    my $invert  = $+{invert}  // '';
	    my $compare = $+{compare} || '||';

            s/\n/ $compare ${invert}defined(__OpenBSD__)\n/;
            $modified = !!1;
        }
    }

    if ($modified) {
	say $file;
        cp $file, "$file.orig.port" unless -e "$file.orig.port";
        $fh->seek( 0, 0 );
        $fh->truncate(0);
        $fh->print(@content);
    }

    $fh->close;
}
