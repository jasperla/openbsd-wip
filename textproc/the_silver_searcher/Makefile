# $OpenBSD: Makefile,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT =	code searching tool, with a focus on speed (ag)

DISTNAME =	the_silver_searcher-0.16
CATEGORIES =	textproc

HOMEPAGE =	https://github.com/ggreer/the_silver_searcher
MAINTAINER =	Florian Stinglmayr <fstinglmayr@gmail.com>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pcre pthread z

MASTER_SITES =	http://pub.n0la.org/

LIB_DEPENDS =	devel/pcre

CONFIGURE_STYLE =	gnu

NO_TEST =	YES

.include <bsd.port.mk>
