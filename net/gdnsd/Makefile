# $OpenBSD$

SHARED_ONLY=		Yes

COMMENT=		geographically-aware, authoritative-only DNS server

GH_ACCOUNT=		blblack
GH_PROJECT=		gdnsd
GH_TAGNAME=		v1.11.4
GH_COMMENT=		60870303ed7aeb1aaec708cc1283ca39641e007b

DISTNAME=		${GH_PROJECT}-${GH_TAGNAME:S/v//g}
CATEGORIES=		net

HOMEPAGE=		http://gdnsd.org/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c ev m pthread

BUILD_DEPENDS=		devel/libtool \
			devel/ragel \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS=		devel/libev
RUN_DEPENDS=		archivers/xz \
			net/curl
TEST_DEPENDS=		net/p5-IO-Socket-INET6 \
			www/p5-libwww

USE_GMAKE=		Yes

AUTOCONF_VERSION=	2.63
AUTOMAKE_VERSION=	1.11

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-rundir=${VARBASE}/run/ \
			--with-rootdir=${VARBASE}/gdnsd/
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

SUBST_VARS += VARBASE

# XXX: At least one of these hangs, though doesn't seem to be gdnsd's fault
post-extract:
	rm -r ${WRKSRC}/t/003complex

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

post-install:
	rm ${PREFIX}/lib/gdnsd/*.{a,la}
	rm ${PREFIX}/share/doc/gdnsd/*.pod
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gdnsd/
	${INSTALL_DATA} ${FILESDIR}/config ${PREFIX}/share/examples/gdnsd/

.include <bsd.port.mk>
