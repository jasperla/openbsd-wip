# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		kevent based inotify

DISTNAME =		libinotify-20120419

SHARED_LIBS =		inotify 0.0

CATEGORIES =		devel

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		pthread

MASTER_SITES = 		http://ftp.vim.org/pub/ftp/os/BSD/FreeBSD/ports/local-distfiles/sunpoet/ \
			http://www.linklevel.net/distfiles/
EXTRACT_SUFX = 		.tar.xz

BUILD_DEPENDS =		devel/libtool \
			${MODGNU_AUTOCONF_DEPENDS}

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	automake

AUTOCONF_VERSION =	2.63
AUTOMAKE_VERSION =	1.11

TEST_TARGET = 		test

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} libtoolize --force --copy
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal --force
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoheader -f
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake --add-missing
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoconf -f

.include <bsd.port.mk>
