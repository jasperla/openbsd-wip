# $OpenBSD$

COMMENT =		LOLCODE interpreter

V =			0.9.2
REV =			c95d6f7
DISTNAME =		justinmeza-lci-v${V}-0-g${REV}
PKGNAME =		lci-${V}

CATEGORIES =		lang

HOMEPAGE =		http://www.icanhaslolcode.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m

MASTER_SITES =		http://github.com/justinmeza/lci/tarball/v${V}/

MODULES =		devel/cmake \
			lang/python
MODPY_RUNDEP =		No
MODPY_BUILDDEP =	No
REGRESS_DEPENDS =	devel/cmake \
			lang/python/${MODPY_VERSION}

WRKDIST =		${WRKDIR}/justinmeza-lci-${REV}

pre-regress:
	ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
