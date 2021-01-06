# $OpenBSD$

COMMENT =	tiny C compiler
DISTNAME =	tcc-0.9.27.20210105
CATEGORIES =	lang

GH_ACCOUNT =	TinyCC
GH_PROJECT =	tinycc
GH_COMMIT =	f9c3b61884b0a3ae65b5b2af3f4937d1a06c3252

HOMEPAGE =	https://bellard.org/tcc/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# --with-selinux allows the use of mmap/mprotect with -run
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--cc="${CC}" \
			--debug \
			--docdir="${LOCALBASE}/share/doc/tcc" \
			--infodir="${LOCALBASE}/info" \
			--mandir="${LOCALBASE}/man" \
			--with-selinux

USE_GMAKE =	Yes

do-gen:
	sed -i 's,LOCALBASE,${LOCALBASE},g' ${WRKSRC}/tccelf.c

.include <bsd.port.mk>
