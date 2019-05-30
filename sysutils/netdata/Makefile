# $OpenBSD: Makefile v 1.80 2019/04/01 07:35:45 bentley Exp $

# XXX restrict for now; 64-bit time_t issues;
ONLY_FOR_ARCHS = ${LP64_ARCHS}
# grep build output for "warning: format specifies" -- currently on following line:cols:
# -----
# daemon/unit_test.c:1285:13, 1296:17
# web/api/exporters/shell/allmetrics_shell.c:120:30
# web/api/formatters/rrdset2json.c:46:22, 47:22, 48:22
# web/api/web_api_v1.c:462:64
# health/health.c:485:6, 507:69
# database/rrdset.c:1265:143, 1265:194
# streaming/rrdpush.c:1011:15

COMMENT =	real time performance monitoring daemon and web interface

V =		1.15.0
DISTNAME =	netdata-v${V}
PKGNAME =	netdata-${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/netdata/netdata

#MAINTAINER =	???

# GPLv3+ (main code)
# WTFPL, Apache 2.0, MIT etc. (various redistributed code)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto lz4 m pthread ssl uuid uv z

MASTER_SITES =		https://github.com/netdata/netdata/releases/download/v${V}/

LIB_DEPENDS =		archivers/lz4 \
			devel/libuv \
			sysutils/e2fsprogs
RUN_DEPENDS +=		net/curl \
			shells/bash \
			sysutils/coreutils

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69
FAKE_FLAGS =		configdir="${PREFIX}/share/examples/netdata"
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS +=	--with-user=_netdata

# the following are used by individual plugins; these could be split off
# into sub-packages to avoid heavier deps for the main netdata package
# (though not worth it for lighter deps). probably an incomplete list.

# - freeipmi.plugin (--enable-plugin-freeipmi)
LIB_DEPENDS +=		sysutils/freeipmi
WANTLIB +=		ipmimonitoring

# - cups.plugin (--enable-plugin-cups)
# are libs enough or does it also need bins?
LIB_DEPENDS +=		print/cups,-libs
WANTLIB +=		cups

# - fping.plugin
RUN_DEPENDS +=		net/fping

# - ioping.plugin
RUN_DEPENDS +=		sysutils/ioping

# needs libyajl and libxenstat
CONFIGURE_ARGS +=	--disable-plugin-xenstat
# needs libcurl and libaws-cpp-sdk-{core,kinesis}
CONFIGURE_ARGS +=	--disable-backend-kinesis
# linux netflow accounting
CONFIGURE_ARGS +=	--disable-plugin-nfacct

post-install:
	find ${WRKINST} -name .keep -delete

.include <bsd.port.mk>
