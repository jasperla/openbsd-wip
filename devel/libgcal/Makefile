# $OpenBSD$

CATEGORIES =		devel productivity
COMMENT =		C library for Google calendar and contacts
DISTNAME =		libgcal-0.9.6
HOMEPAGE =		http://code.google.com/p/libgcal/

SHARED_LIBS =		gcal	0.0

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		curl xml2

MASTER_SITES =		http://libgcal.googlecode.com/files/
EXTRACT_SUFX =		.tar.bz2

CONFIGURE_STYLE =	gnu

BUILD_DEPENDS =		devel/check
LIB_DEPENDS =		net/curl \
			textproc/libxml

SEPARATE_BUILD =	simple

.include <bsd.port.mk>
