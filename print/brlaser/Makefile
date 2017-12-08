# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	CUPS printer driver for some Brother laser printers

V =		3
DISTNAME =	brlaser-${V}

CATEGORIES =	print

HOMEPAGE =	https://github.com/pdewacht/brlaser

# GPLv2+
PERMIT_PACKAGE_CDROM = Yes

WANTLIB +=	${COMPILER_LIBCXX} c cupsimage iconv

MASTER_SITES =	${HOMEPAGE}/releases/download/v$V/

LIB_DEPENDS =	print/cups,-libs

CONFIGURE_ENV += LDFLAGS="-L${LOCALBASE}/lib -lpthread"

COMPILER =	base-clang ports-gcc

CONFIGURE_STYLE = autoconf
AUTOCONF_VERSION = 2.69

.include <bsd.port.mk>
