# $OpenBSD: Makefile,v 1.49 2013/07/06 03:29:57 brad Exp $

COMMENT=	GNU parser generator

DISTNAME=	bison-3.0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=bison/}

HOMEPAGE=	http://www.gnu.org/software/bison/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c
MODULES=	devel/gettext
# Note: We use gnu m4 at build time but our m4 at runtime
BUILD_DEPENDS=	devel/m4

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=	--disable-yacc
CONFIGURE_ENV +=	"M4_GNU=-g"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
