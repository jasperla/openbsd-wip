# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT =		Tkabber plugins

DISTNAME =		tkabber-plugins-${VERSION}

RUN_DEPENDS =		net/tkabber/base

do-configure:
	@perl -pi -e 's,/usr/local,${PREFIX},' ${WRKSRC}/Makefile

.include <bsd.port.mk>
