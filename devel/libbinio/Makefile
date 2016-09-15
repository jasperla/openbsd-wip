# $OpenBSD: mk.conf.template,v 1.23 2016/04/26 10:57:00 sthen Exp $

COMMENT =	binary I/O stream class library

DISTNAME =	libbinio-1.4
SHARED_LIBS +=	binio	0.0	# 1.0
CATEGORIES =	devel

HOMEPAGE =	http://libbinio.sourceforge.net/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	m stdc++

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=libbinio/}

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
