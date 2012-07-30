# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT =		Editor for OpenStreetMap

DISTNAME =		merkaartor-0.17.2

#SHARED_LIBS =		???

MAINTAINER =		Edd Barrett <edd@openbsd.org>

CATEGORIES =		geo

HOMEPAGE =		http://merkaartor.be/wiki/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes 
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += ${MODQT4_WANTLIB}
WANTLIB += ICE QtGui QtNetwork QtSvg QtWebKit QtXml SM X11 Xext
WANTLIB += Xi Xinerama Xrender c fontconfig freetype m pthread
WANTLIB += stdc++ z

MASTER_SITES =		http://merkaartor.be/attachments/download/253/
EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt4

# gdal etc. XXX
#LIB_DEPENDS =		???

#SEPARATE_BUILD =	Yes (build in a directory other than WRKSRC)
USE_GMAKE =		Yes

NO_REGRESS =		Yes

do-configure:
	cd ${WRKSRC} && qmake4

MAKE_ENV +=	INSTALL_ROOT=${DESTDIR}

.include <bsd.port.mk>
