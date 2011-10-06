COMMENT =	tool for man-in-the-middle attack on SSL connections

VERSION =	0.8
DISTNAME =	sslsniff-${VERSION}

CATEGORIES =	security

HOMEPAGE =	http://www.thoughtcrime.org/software/sslsniff/

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://www.thoughtcrime.org/software/sslsniff/

WANTLIB += c ssl log4cpp boost_thread-mt \
	boost_filesystem boost_filesystem-mt

CONFIGURE_STYLE=	gnu

LIB_DEPENDS +=		devel/boost \
			devel/log4cpp

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
