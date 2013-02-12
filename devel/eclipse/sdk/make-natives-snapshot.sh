#!/bin/sh

base=git://git.eclipse.org/gitroot
stamp=`date -u '+%Y%m%d%H%M%S'`

fetch() {
(
	dirname="$1"; shift
	repo="$1"; shift
	rm -rf "$dirname"
	mkdir -p "$dirname"
	cd "$dirname"
	git init
	git config core.sparseCheckout true
	printf "%s\n" "$@" > .git/info/sparse-checkout
	git pull --depth 1 "$base/$repo"
)
}

fetch natives/launcher \
equinox/rt.equinox.framework.git \
bundles/org.eclipse.equinox.executable/library/{*.{c,h,mak},gtk}

fetch natives/libgnomeproxy \
platform/eclipse.platform.team.git \
bundles/org.eclipse.core.net/natives/unix

fetch natives/libunixfile \
platform/eclipse.platform.resources.git \
bundles/org.eclipse.core.filesystem/natives/unix

rm -rf natives/{launcher,libgnomeproxy,libunixfile}/.git

tar -cvzf eclipse-natives-${stamp}.tar.gz natives
