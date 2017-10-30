# $OpenBSD$

V =		0.2.3
COMMENT =	DeforaOS project management system
DISTNAME =	deforaos-configure-${V}

GH_PROJECT =	configure
GH_TAGNAME =	configure_${V:S/./-/g}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += System c

BUILD_DEPENDS =	textproc/gtk-doc \
		textproc/libxml \
		textproc/libxslt

LIB_DEPENDS =	x11/deforaos/libsystem

# This is going to be a theme for all DeforaOS ports.
pre-configure:
	cd ${WRKSRC} && grep -Rl '\-O2' * | xargs sed -i 's,-O2,${CFLAGS},g'
	sed -i 's,configure,deforaos/configure,g' \
		${WRKSRC}/doc/scripts/Makefile

.include <bsd.port.mk>
