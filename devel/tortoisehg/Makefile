# $OpenBSD: Makefile,v 1.16 2014/05/19 19:16:17 rpointel Exp $

COMMENT =		series of applications for Mercurial

MODPY_EGG_VERSION =	3.3
DISTNAME =		tortoisehg-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://tortoisehg.bitbucket.org/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://bitbucket.org/tortoisehg/targz/downloads/

MODULES =		lang/python

DEPENDS =		devel/py-sip \
			editors/qscintilla \
			x11/py-qt4

BUILD_DEPENDS =		${DEPENDS} \
			textproc/py-sphinx

RUN_DEPENDS =		${DEPENDS} \
			editors/py-qscintilla \
			devel/mercurial>=3.2,<3.4 \
			devel/py-iniparse

NO_TEST =		Yes

post-build:
	cd ${WRKSRC}/doc && make html
	echo "htmlhelp_path =\"${PREFIX}/share/doc/tortoisehg/html/\"" >> \
		${WRKSRC}/tortoisehg/util/config.py

post-install:
	cp -R ${WRKSRC}/doc/build/html ${PREFIX}/share/doc/tortoisehg
	rm ${PREFIX}/share/doc/tortoisehg/html/.buildinfo

.include <bsd.port.mk>
