# $OpenBSD: Makefile,v 1.18 2013/08/09 16:53:45 ajacoutot Exp $

COMMENT =	CUPS printer driver for some Brother laser printers

V =		3
DISTNAME =	brlaser-${V}

CATEGORIES =	print

HOMEPAGE=	https://github.com/pdewacht/brlaser

# GPLv2+
PERMIT_PACKAGE_CDROM = Yes

WANTLIB+=	c pthread cups cupsimage

MASTER_SITES =	${HOMEPAGE}/releases/download/v$V/

LIB_DEPENDS =	print/cups,-libs

CONFIGURE_ENV += LDFLAGS="-L${LOCALBASE}/lib -lpthread"

COMPILER =	base-clang ports-gcc

CONFIGURE_STYLE = autoconf
AUTOCONF_VERSION = 2.69

.include <bsd.port.mk>
