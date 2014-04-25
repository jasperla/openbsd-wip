# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		REPL for PHP

V =			1.0.8
DISTNAME =		v${V}
WRKDIST =		${WRKDIR}/boris-${V}
PKGNAME =		boris-${V}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/d11wtq/boris

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/d11wtq/boris/archive/

MODULES =		lang/php
RUN_DEPENDS +=		lang/php/${MODPHP_VERSION},-pcntl

NO_BUILD =		Yes
NO_TEST =		Yes

SUBST_VARS +=		MODPHP_BIN
do-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${WRKSRC}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/boris
	mv ${WRKSRC}/{LICENSE,README.md} ${PREFIX}/share/doc/boris
	cp -r ${WRKSRC} ${PREFIX}/boris
	ln -s ${TRUEPREFIX}/boris/bin/boris ${PREFIX}/bin/boris
	${SUBST_CMD} ${PREFIX}/boris/bin/boris
	rm ${PREFIX}/boris/bin/boris.{orig,beforesubst} \
		${PREFIX}/boris/.gitignore

.include <bsd.port.mk>

.if ${MODPHP_VERSION} == 5.3
BROKEN =		Readline support broken in PHP-5.3
.elif ${MODPHP_VERSION} == 5.4
RUN_DEPENDS +=		php->=5.4.27p2:lang/php/${MODPHP_VERSION}
.elif ${MODPHP_VERSION} == 5.5
RUN_DEPENDS +=		php->=5.5.11p2:lang/php/${MODPHP_VERSION}
.endif
