# $OpenBSD $

COMMENT =		suite of tools for evaluating the quality of an OpenGL implementation	

DISTNAME =		glean-code
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

.include <bsd.port.mk>
