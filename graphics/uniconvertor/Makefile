# $OpenBSD$

COMMENT =		universal vector graphics translator

V = 			1.1.5
DISTNAME =		uniconvertor-${V}

CATEGORIES =		graphics

HOMEPAGE =		http://sk1project.org/

#MAINTAINER =		???

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://uniconvertor.googlecode.com/files/

MODULES =		lang/python

NO_REGRESS =		Yes

SUBST_VARS = 		V

post-patch:
	perl -pi -e 's,python,${MODPY_BIN},g' ${WRKSRC}/src/uniconv
	perl -pi -e 's,/usr/bin/python,${MODPY_BIN},g' ${WRKSRC}/src/__init__.py

.include <bsd.port.mk>
