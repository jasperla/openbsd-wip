# $OpenBSD$

CATEGORIES =		devel
COMMENT =		A library of C++ classes for flexible logging
VERSION =		1.0
DISTNAME =		log4cpp-${VERSION}
HOMEPAGE =		http://log4cpp.sourceforge.net/

SHARED_LIBS =		log4cpp		0.0

MAINTAINER =		Rafael Sadowski <rafael@sizeofvoid.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

EXTRACT_SUFX=		.tar.gz

MASTER_SITES=		http://www.sizeofvoid.org/pub/OpenBSD/distfiles/

CONFIGURE_ARGS+=	--with-pthreads --disable-html-docs

CONFIGURE_STYLE=	gnu

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

SEPARATE_BUILD =	simple
CONFIGURE_ARGS =	${CONFIGURE_SHARED}

.include <bsd.port.mk>
