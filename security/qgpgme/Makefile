# $OpenBSD:$

COMMENT =		Qt and C++ bindings for GPGme

VERSION =		1.9.0
EPOCH =			0
DISTNAME =		gpgme-${VERSION}
PKGNAME =		qgpgme-${VERSION}
CATEGORIES =		security devel

HOMEPAGE =		http://www.gnupg.org/gpgme.html

SHARED_LIBS +=  gpgmepp                   0.0 # 10.0
SHARED_LIBS +=  qgpgme                    0.0 # 9.0

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core assuan execinfo glib-2.0
WANTLIB += gpg-error gthread-2.0 iconv icudata icui18n icuuc intl
WANTLIB += m pcre pcre2-16 z

MASTER_SITES =		${MASTER_SITE_GNUPG:=gpgme/}
EXTRACT_SUFX =		.tar.bz2

MODULES +=		x11/qt5

CONFIGURE_STYLE =	gnu

USE_GMAKE =		Yes

CONFIGURE_ARGS +=	--enable-languages='cpp qt' \
			--disable-gpgsm-test

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CXXFLAGS +=		-std=c++11

# Requires gpgsm (gnupg 2.x) during build, but can run with any gnupg.
BUILD_DEPENDS =		gnupg->=2:security/gnupg2

RUN_DEPENDS =		security/gpgme

LIB_DEPENDS =		devel/gettext \
			security/libgpg-error \
			security/libassuan

NO_TEST =		Yes

post-install:
	rm ${PREFIX}/bin/{gpgme-config,gpgme-tool}
	rm ${PREFIX}/include/gpgme.h
	rm ${PREFIX}/lib/libgpgme.*
	rm ${PREFIX}/share/aclocal/gpgme.m4
	rm ${PREFIX}/info/gpgme.*

.include <bsd.port.mk>
