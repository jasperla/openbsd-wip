# $OpenBSD: Makefile.template,v 1.54 2008/01/13 16:43:57 espie Exp $

COMMENT =	fractal image generator (originally from DOS)

DISTNAME =	xfractint-20.04p11
PKGNAME =	${DISTNAME:S/p/pl/}

CATEGORIES =	graphics x11

HOMEPAGE =	http://www.fractint.org/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# custom, see fractsrc.txt
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

WANTLIB += X11 Xft c fontconfig m

MASTER_SITES = ${HOMEPAGE}ftp/current/linux/

MAKE_FLAGS = \
	XFTHFD="${X11BASE}/include/freetype2" \
	CC="${CC}" \
	OPT="" \
	LIBS="-L${X11BASE}/lib -lX11 -lm -lXft -lfontconfig" \
	CFLAGS="-I./headers -I${X11BASE}/include -DXFRACT -DWITH_XFT -DBIG_ANSI_C -DNOBSTRING -DLINUX -fno-builtin ${CFLAGS}" \
	BINDIR="${WRKINST}${PREFIX}/bin" \
	SRCDIR="${WRKINST}${PREFIX}/share/xfractint" \
	SHRDIR="${PREFIX}/share/xfractint" \
	MANDIR="${WRKINST}${PREFIX}/man/man1"

USE_GMAKE =		Yes
NO_REGRESS =		Yes
ALL_TARGET =		xfractint

.include <bsd.port.mk>
