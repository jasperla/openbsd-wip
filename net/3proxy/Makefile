# $OpenBSD$

COMMENT =		tiny proxy server

V =			0.6.1
DISTNAME =		3proxy-$V

CATEGORIES =		net

HOMEPAGE =		http://3proxy.ru

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread

MASTER_SITES =		http://3proxy.ru/$V/
EXTRACT_SUFX =		.tgz

MAKE_FLAGS =		LN="${CC}"
FAKE_FLAGS =		prefix="${PREFIX}" \
			man_prefix="${PREFIX}" \
			ETCDIR="${PREFIX}/share/examples/3proxy"

NO_TEST =		Yes

MAKE_FILE =		Makefile.unix

post-extract:
	perl -pi -e 's/\015//g' ${WRKSRC}/Makefile.unix-install

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${FAKE_FLAGS} \
		-f Makefile.unix-install install
	${INSTALL_DATA} ${WRKSRC}/cfg/3proxy.cfg.sample \
		${PREFIX}/share/examples/3proxy

.include <bsd.port.mk>
