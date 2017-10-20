# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT=	COBOL compiler, formerly known as OpenCOBOL

DISTNAME =	gnucobol-2.2

SHARED_LIBS +=	cob	3.0	# 4.0

CATEGORIES =	lang

HOMEPAGE =	http://www.opencobol.org/

# compiler: GPL
# run-time library: LGPL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_GNU:=gnucobol/}

LIB_DEPENDS =	databases/db/v4 \
		devel/gettext \
		devel/gmp

WANTLIB += c db gmp iconv intl m ncurses

CONFIGURE_STYLE = gnu

CONFIGURE_ENV =	LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS="-I${LOCALBASE}/include" \
		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4"

# Do not pick up kpathsea/getopt.h from print/texlive/base
#CONFIGURE_ENV+=	ac_cv_header_kpathsea_getopt_h=no

.include <bsd.port.mk>
