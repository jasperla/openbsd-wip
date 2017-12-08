# $OpenBSD$

V =		0.3.1
COMMENT =	DeforaOS system library
DISTNAME =	deforaos-libsystem-${V}

SHARED_LIBS +=	System                    0.0 # 0.0

GH_PROJECT =	libSystem
GH_TAGNAME =	libSystem_${V:S/./-/g}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

BUILD_DEPENDS =	textproc/gtk-doc \
		textproc/libxslt

# Too many to patch.
pre-configure:
	cd ${WRKSRC} && grep -Rl '\-O2' * | xargs sed -i 's,-O2,${CFLAGS},g'
	sed -i 's,$${LIBSystem_VERSION},${LIBSystem_VERSION},g' \
		${WRKSRC}/src/Makefile

.include <bsd.port.mk>
