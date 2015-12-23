# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

V ?=			0.0.3
DISTNAME ?=		${XOREOS_PROJECT}-$V

CATEGORIES ?=		games

HOMEPAGE ?=		https://xoreos.org/

# GPLv3+
PERMIT_PACKAGE_CDROM ?=	Yes

MASTER_SITES ?=		https://github.com/xoreos/${XOREOS_PROJECT}/releases/download/v$V/

CONFIGURE_STYLE ?=	gnu
CONFIGURE_ENV ?=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
