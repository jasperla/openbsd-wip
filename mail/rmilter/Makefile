# $OpenBSD$

COMMENT=	milter for rspamd (also supports clamav, rate-limiting, etc)

GH_ACCOUNT=	vstakhov
GH_PROJECT=	rmilter
GH_TAGNAME=	1.8.6

CATEGORIES=	mail

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m memcached memcachedutil milter opendkim
WANTLIB += pcre pthread ssl

MODULES=	devel/cmake

BUILD_DEPENDS=	devel/bison
LIB_DEPENDS=	devel/libmemcached \
		devel/pcre \
		mail/sendmail,-libmilter \
		mail/opendkim

CONFIGURE_ARGS=	-DCMAKE_C_OPT_FLAGS="${CFLAGS}" \
		-DMANDIR="${TRUEPREFIX}/man"

NO_TEST=	Yes

pre-configure:
	sed -i -e 's,/etc/,${SYSCONFDIR}/,g' \
	    -e 's,/var/,${LOCALSTATEDIR}/,g' \
	    ${WRKSRC}/rmilter*conf* ${WRKSRC}/src/main.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rmilter
	${INSTALL_DATA} ${WRKSRC}/rmilter.conf.sample \
	    ${WRKSRC}/rmilter-grey.conf \
	    ${PREFIX}/share/examples/rmilter/

.include <bsd.port.mk>
