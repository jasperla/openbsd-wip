# $OpenBSD $

COMMENT =		OpenGL implementation test tools

DISTNAME =		glean-code
REVISION =		1
PKGNAME =		glean-${REVISION}
EXTRACT_SUFX=       	.tar.bz2

CATEGORIES =		graphics sysutils
HOMEPAGE =		http://glean.sourceforge.net

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# MIT/X11-style
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES= 		${MASTER_SITE_SOURCEFORGE:=glean/}

CONFIGURE_STYLE=        cmake

post-patch:
	cd ${WRKSRC}/src && cmake .

do-build:
	cd ${WRKSRC}/src && make

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${PKGNAME}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${PKGNAME}/{html,sgml}
	${INSTALL_DATA} ${WRKSRC}/{CHANGES,COPYRIGHT,JOBS} ${PREFIX}/share/doc/${PKGNAME}/
	cp -R ${WRKSRC}/doc/html ${PREFIX}/share/doc/${PKGNAME}/
	cp -R ${WRKSRC}/doc/sgml ${PREFIX}/share/doc/${PKGNAME}/
	${INSTALL_PROGRAM} ${WRKSRC}/src/bin/{glean,difftiff,showtiff,showvis}	${PREFIX}/bin

.include <bsd.port.mk>
