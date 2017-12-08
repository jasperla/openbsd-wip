# $OpenBSD$

V =		0.0.3
COMMENT =	DeforaOS Code pre-processor
DISTNAME =	deforaos-cpp-${V}

SHARED_LIBS +=	cpp                       0.0 # 0.0

GH_PROJECT =	cpp
GH_TAGNAME =	CPP_${V:S/./-/g}

# LGPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += System c

BUILD_DEPENDS =	textproc/gtk-doc

LIB_DEPENDS =	x11/deforaos/libsystem

# The usual
pre-configure:
	cd ${WRKSRC} && grep -Rl '\-O2' * | xargs sed -i 's,-O2,${CFLAGS},g'

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/configure
	@cp ${FILESDIR}/src-Makefile ${WRKSRC}/src/Makefile
	sed -i 's,$${LIBcpp_VERSION},${LIBcpp_VERSION},g' \
		${WRKSRC}/src/Makefile

.include <bsd.port.mk>
