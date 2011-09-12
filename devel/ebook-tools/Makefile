# $OpenBSD$

V =			0.2.1
COMMENT =		accessing and converting various ebook file formats
DISTNAME =		ebook-tools-${V}

SHARED_LIBS +=		epub		0.0	# 0.2

CATEGORIES =		devel textproc x11

HOMEPAGE =		http://ebook-tools.sourceforge.net/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		c xml2 zip

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ebook-tools/${V}/}

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/doxygen
LIB_DEPENDS =		textproc/libxml \
			archivers/libzip \

SEPARATE_BUILD =	simple
NO_REGRESS =		Yes

# For libzip
COPTS =			-I${LOCALBASE}/lib/libzip/include

.include <bsd.port.mk>
