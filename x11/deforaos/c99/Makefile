# $OpenBSD$

V =		0.0.0.1
COMMENT =	DeforaOS C99 compiler framework
DISTNAME =	deforaos-c99-${V}

GH_PROJECT =	c99
GH_COMMIT =	f92b96b35afb0ea7d6e5a1d6bddd5ccaf3c619b8

# GPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Asm System c cpp

BUILD_DEPENDS =	textproc/gtk-doc

LIB_DEPENDS =	x11/deforaos/asm

# The usual
pre-configure:
	cd ${WRKSRC} && grep -Rl '\-O2' * | xargs sed -i 's,-O2,${CFLAGS},g'

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/configure

.include <bsd.port.mk>
