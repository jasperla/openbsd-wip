# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		gsoap is a SOAP library and code generator for C/C++

VERSION =	2.8.16
DISTNAME =		gsoap_${VERSION}
PKGNAME =	gsoap-${VERSION}

CATEGORIES =		net

HOMEPAGE =		http://gsoap2.sourceforge.net/

MAINTAINER =		Florian Stinglmayr <fstinglmayr@gmail.com>

# Mozilla-like, GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto m ssl stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gsoap2/}
EXTRACT_SUFX =		.zip

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} --enable-ipv6

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/gsoap-2.8

.include <bsd.port.mk>
