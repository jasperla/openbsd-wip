COMMENT =	ELF related utils for ELF 32/64 binaries

DISTNAME =	pax-utils-1.3.7
EXTRACT_SUFX =	.tar.xz

CATEGORIES =	devel

HOMEPAGE =	https://wiki.gentoo.org/wiki/Hardened/PaX_Utilities

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB +=	c

MASTER_SITES =	https://dev.gentoo.org/~sam/distfiles/app-misc/pax-utils/

MODULES =	devel/meson \
		lang/python

MODPY_ADJ_FILES =	lddtree.py

RUN_DEPENDS =		devel/py-elftools${MODPY_FLAVOR} \
			shells/bash

CONFIGURE_ARGS =	-Dbuild_manpages=disabled \
			-Duse_libcap=disabled \
			-Duse_fuzzing=false

pre-configure:
	sed -i 's,bin/bash,${LOCALBASE}/bin/bash,' ${WRKSRC}/symtree.sh

.include <bsd.port.mk>
