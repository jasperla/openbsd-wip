# $OpenBSD: Makefile,v 1.3 2010/10/24 12:13:27 phessler Exp $

COMMENT =		library for reading RAW files

SHARED_LIBS +=  raw                       0.0 # 2.6
SHARED_LIBS +=  raw_r                     0.0 # 2.6

V =			0.13.8
DISTNAME =		LibRaw-${V}
PKGNAME =		${DISTNAME:L}
CATEGORIES =		graphics

HOMEPAGE =		http://www.libraw.org/

# LGPL v2.1 OR CDDL v1.0 OR their own
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c lcms2 m pthread stdc++

LIB_DEPENDS =		graphics/lcms2 # XXX it can use both,  but it prefers lcms2, when both are installed

MASTER_SITES =		http://www.libraw.org/data/
NO_REGRESS =		Yes
CONFIGURE_STYLE =	gnu
USE_LIBTOOL =		Yes

CONFIGURE_ARGS += 	${CONFIGURE_SHARED} \
			--disable-openmp

.include <bsd.port.mk>
