# $OpenBSD: Makefile.template,v 1.77 2018/02/09 17:08:33 sthen Exp $

COMMENT =	AirPlay audio player

GH_ACCOUNT =	mikebrady
GH_PROJECT =	shairport-sync
GH_TAGNAME =	3.1.7

CATEGORIES =	audio

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD?
PERMIT_PACKAGE_CDROM =	Yes

#MODULES =		???
BUILD_DEPENDS=	devel/popt \
		devel/libconfig \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
#RUN_DEPENDS =		???
#LIB_DEPENDS =		???
#TEST_DEPENDS =		???

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#TEST_FLAGS =		???

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--includedir=${PREFIX}/include \
			--libdir=${PREFIX}/lib \
			--sysconfdir=${SYSCONFDIR} \
			--with-avahi \
			--with-sndio \
			--with-os=openbsd

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

#NO_BUILD =		Yes
#NO_TEST =		Yes

# Overrides for default values
#
#CFLAGS =		???
#LDFLAGS =		???
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
#WRKDIST =		??? if other than ${WRKDIR}/${DISTNAME}
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

#ALL_TARGET =		???
#INSTALL_TARGET =	???
#TEST_TARGET =		???

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf --force --install

.include <bsd.port.mk>
