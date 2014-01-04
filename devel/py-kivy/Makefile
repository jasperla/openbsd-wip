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

WANTLIB +=		GL m pthread ${MODPY_WANTLIB}

# Couldn't find any source distfiles, rolled my own from git tag.
MASTER_SITES =		http://theunixzoo.co.uk/distfiles/

# Uses setuptools indirectly
# XXX Pick up any extra stuff?
MODULES =		lang/python
MODPY_SETUPTOOLS =	No
BUILD_DEPENDS +=	lang/cython \
			devel/py-setuptools
TEST_DEPENDS +=		devel/py-nose \
			lang/cython \
			devel/py-coverage

# Tests write to ${HOME}
PORTHOME =		${WRKDIR}
LIBTOOL =		No

TEST_IS_INTERACTIVE =	x11

.include <bsd.port.mk>
