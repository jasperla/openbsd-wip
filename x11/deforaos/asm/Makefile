# $OpenBSD$

V =		0.2.3
COMMENT =	DeforaOS assembly and disassembly framework
DISTNAME =	deforaos-asm-${V}

SHARED_LIBS +=	Asm                       0.0 # 0.0

GH_PROJECT =	asm
GH_TAGNAME =	Asm_${V:S/./-/g}

# LGPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += System c cpp

BUILD_DEPENDS =	textproc/gtk-doc \
		textproc/libxml \
		textproc/libxslt

LIB_DEPENDS =	x11/deforaos/cpp

# The usual
pre-configure:
	cd ${WRKSRC} && grep -Rl '\-O2' * | xargs sed -i 's,-O2,${CFLAGS},g'

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/configure
	@cp ${FILESDIR}/src-Makefile ${WRKSRC}/src/Makefile
	@cp ${FILESDIR}/tools-Makefile ${WRKSRC}/tools/Makefile
	sed -i 's,$${LIBAsm_VERSION},${LIBAsm_VERSION},g' \
		${WRKSRC}/src/Makefile ${WRKSRC}/tools/Makefile

.include <bsd.port.mk>
