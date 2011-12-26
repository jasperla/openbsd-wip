# $OpenBSD$

COMMENT =		access Apple devices

DISTNAME =		libimobiledevice-1.0.6

SHARED_LIBS =		imobiledevice	0.0 # 1.5

CATEGORIES =		devel

HOMEPAGE =		http://www.libimobiledevice.org

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB  = c gcrypt glib-2.0 gmp gnutls gpg-error gthread-2.0
WANTLIB += hogweed m nettle p11-kit pcre plist plist++
WANTLIB += pthread ${MODPY_WANTLIB} stdc++ tasn1 usbmuxd xml2 z

MASTER_SITES =		${HOMEPAGE}/downloads/
EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python \
			devel/gettext
BUILD_DEPENDS =		devel/libplist,-python
LIB_DEPENDS =		sysutils/usbmuxd \
			security/libgcrypt \
			security/gnutls

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON_VERSION="${MODPY_VERSION}"

NO_REGRESS =		Yes

.include <bsd.port.mk>
