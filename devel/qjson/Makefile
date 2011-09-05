# $OpenBSD$
# $FreeBSD: ports/devel/qjson/Makefile,v 1.3 2010/06/12 10:41:02 avilla Exp $

COMMENT=	Qt-based library that maps JSON data to QVariant objects
DISTNAME =	qjson-0.7.1
CATEGORIES =	devel
SHARED_ONLY =	Yes

SHARED_LIBS =	qjson	0.0

MODULES =	devel/cmake x11/qt4
WANTLIB +=	m stdc++

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=qjson/}
EXTRACT_SUFX =	.tar.bz2
WRKSRC =	${WRKDIR}/qjson

# LGPLv2
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes

BUILD_DEPENDS =	devel/doxygen
DOCSDIR =	${PREFIX}/share/doc/qjson

#pre-configure:
#	${REINPLACE_CMD} -e '/pkgconfig/ s/$${LIB_SUFFIX}/data/' \
#		-e 's|apps/cmake/modules|cmake/Modules|' \
#		${WRKSRC}/CMakeLists.txt

post-build:
	cd ${WRKSRC}/doc && doxygen

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	cd ${WRKSRC}/doc/html && find . -type d -print0 | \
		(cd ${DOCSDIR} && xargs -0 ${INSTALL_DATA_DIR})
	find ${WRKSRC}/doc/html -type f -print0 | \
		(cd ${DOCSDIR} && xargs -0 -J % ${INSTALL_DATA} % ${DOCSDIR})

.include <bsd.port.mk>
