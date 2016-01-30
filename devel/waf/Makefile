# $OpenBSD$

COMMENT =		python-based build system
V =             	1.8.19
DISTNAME =		waf-${V}
CATEGORIES =		devel
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

HOMEPAGE =		http://waf.io/
MASTER_SITES =		${HOMEPAGE}

EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python

CONFIGURE_STYLE =	No
NO_TEST =		Yes

_WAF_REVISION =		4bb74d2af0d005ad4420ee36f19f050a
_WAF_GIT =		878ab1e29494e28236a260212a5021b1de35d9a3
_WAF_WAFDIR =		${LOCALBASE}/lib

SUBST_VARS +=		V _WAF_REVISION _WAF_GIT _WAF_INSTALL _WAF_WAFDIR

do-build:
	${MODPY_BIN} -m compileall ${WRKSRC}/waflib

do-install:
	${SUBST_CMD} -c -m 755 ${FILESDIR}/waf ${PREFIX}/bin/waf
	cp -R ${WRKSRC}/waflib ${DESTDIR}${_WAF_WAFDIR}/waflib

.include <bsd.port.mk>
