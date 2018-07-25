# $OpenBSD: Makefile.template,v 1.77 2018/02/09 17:08:33 sthen Exp $

COMMENT =	AirPlay audio player

GH_ACCOUNT =	mikebrady
GH_PROJECT =	shairport-sync
GH_TAGNAME =	3.2.1

CATEGORIES =	audio

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD?
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto m sndio ssl

BUILD_DEPENDS=	devel/popt \
		devel/libconfig \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \

CONFIGURE_ENV +=	CFLAGS="${CFLAGS} -I${PREFIX}/include"

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--sysconfdir=${SYSCONFDIR} \
			--with-ssl=openssl \
			--with-avahi \
			--with-sndio \
			--with-os=openbsd

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

SUBST_VARS +=		VARBASE

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf -i -f

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/shairport-sync ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/shairport-sync.7 ${PREFIX}/man/man7

.include <bsd.port.mk>
