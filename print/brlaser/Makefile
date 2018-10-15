# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	CUPS printer driver for some Brother laser printers

V =		4
DISTNAME =	v${V}
DIST_SUBDIR = 	brlaser
PKGNAME =	brlaser-${V}

CATEGORIES =	print

HOMEPAGE =	https://github.com/pdewacht/brlaser

# GPLv2+
PERMIT_PACKAGE_CDROM = Yes

WANTLIB +=	${COMPILER_LIBCXX} c cupsimage iconv

MASTER_SITES =	${HOMEPAGE}/archive/

MODULES =	devel/cmake

LIB_DEPENDS =	print/cups,-libs

WRKDIST =	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
