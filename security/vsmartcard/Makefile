# XXX
# - ${WRKBUILD}/configure hardcodes DYN_LIB_EXT=.so.0.0
#   ${WRKBUILD}/ifd-vpcd/Makefile installs lib under /etc/ with extra .0.10 suffix
#   Can't put into any plist (no applicable prefix):
#  	/etc/ccid
#  	/etc/ccid/libifdvpcd.so.0.0
#  	/etc/ccid/libifdvpcd.so.0.0.0.10
#
# - has docs, but aren't built/installed
# - needs socat(1) hack or pcscd(8) config change, see README

COMMENT =		virtual Smart Card
CATEGORIES =		security
V =			2.4
DIST_TUPLE =		github	frankmorgner	vsmartcard	remote-reader-${V}	.
PKGNAME =		vsmartcard-${V}
WRKSRC =		${WRKDIST}/virtualsmartcard

SHARED_LIBS =		ifdvpcd	0.0

# GPLv3
PERMIT_PACKAGE =	Yes

HOMEPAGE =		https://frankmorgner.github.io/vsmartcard/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

LIB_DEPENDS =		graphics/libqrencode \
			security/pcsc-lite
BUILD_DEPENDS =		devel/help2man

MODULES =		lang/python

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.72
AUTOMAKE_VERSION =	1.16
SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

CONFIGURE_ARGS =	--enable-serialconfdir=/usr/local/lib/pcsc/drivers \
			--enable-serialdropdir=${SYSCONFDIR}/ccid \
			--disable-static
LIBTOOL_FLAGS =		--tag=disable-static

.include <bsd.port.mk>
