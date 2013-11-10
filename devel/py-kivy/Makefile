# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		platform for developing touch applications in Python

V =			1.7.2
DISTNAME =		kivy-${V}
PKGNAME =		py-kivy-${V}

CATEGORIES =		devel
HOMEPAGE =		http://www.kivy.org

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		GL m pthread python2.7

# Couldn't find any source distfiles, rolled my own from git tag.
MASTER_SITES =		http://theunixzoo.co.uk/distfiles/

MODULES =		lang/python
BUILD_DEPENDS +=	lang/cython
TEST_DEPENDS =		devel/py-nose \
			lang/cython \
			devel/py-coverage \
			${FULLPKGNAME}:${FULLPKGPATH} # needs to be installed

# Tests broken XXX
# tests write to home
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
