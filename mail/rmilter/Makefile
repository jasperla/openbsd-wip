# $OpenBSD$

COMMENT=	milter for rspamd (also supports clamav, rate-limiting, etc)

DISTNAME=	rmilter-2.10.0pre20161118
GH_ACCOUNT=	vstakhov
GH_PROJECT=	rmilter
GH_COMMIT=	d4421aeb2e4d3708ede215650eb596691ee69e43

CATEGORIES=	mail

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto glib-2.0 intl m milter opendkim pcre pthread ssl

MODULES+=	devel/cmake \
		gcc4
MODGCC4_ARCHS=	*

BUILD_DEPENDS=	devel/bison
LIB_DEPENDS=	devel/glib2 \
		devel/pcre \
		mail/sendmail,-libmilter \
		mail/opendkim

CONFIGURE_ARGS=	-DCMAKE_C_OPT_FLAGS="${CFLAGS}" \
		-DMANDIR="${TRUEPREFIX}/man"

NO_TEST=	Yes

# no trailing crlf
post-extract:
	cd ${WRKSRC}; for i in contrib/http-parser contrib/xxhash; \
	    do echo >> $$i/CMakeLists.txt; done

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
