# $OpenBSD$

COMMENT=	friendly interactive shell

DISTNAME=	fish-2.0pre20121215

CATEGORIES=	shells

HOMEPAGE=	http://ridiculousfish.com/shell/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m ncurses pthread stdc++

# blech github tarballs https://github.com/fish-shell/fish-shell
MASTER_SITES=	http://spacehopper.org/mirrors/

MODULES=	devel/gettext \
		lang/python
RUN_DEPENDS=	misc/gnugetopt

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= --without-xsel
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

AUTOCONF_VERSION= 2.69

REGRESS_TARGET=	test

WRKDIST=	${WRKDIR}/fish-shell-master

pre-configure:
	perl -pi -e 's,^#!/usr/bin/env python,#!${MODPY_BIN},' \
	    `find ${WRKSRC} -name '*.py'`
	perl -pi -e 's,getopt,gnugetopt,' ${WRKSRC}/share/functions/*.fish

.include <bsd.port.mk>
