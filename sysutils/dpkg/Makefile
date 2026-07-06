COMMENT=	Debian packaging tool
CATEGORIES=	sysutils
MAINTAINER=	chara <chara@cloud9p.org>

V=		1.22.22
SITES=		http://deb.debian.org/debian/pool/main/d/dpkg/

EXTRACT_SUFX=	.tar.xz
DISTNAME=	dpkg-${V}
DISTFILES=	dpkg_${V}${EXTRACT_SUFX}

# GPLv2
PERMIT_PACKAGE=	Yes

USE_GMAKE=		Yes
MODULES =       textproc/intltool

WANTLIB+= 		c curses kvm z iconv intl

RUN_DEPENDS=		devel/gettext,-tools \
			archivers/gtar

BUILD_DEPENDS=		devel/gpatch \
			archivers/gtar

SHARED_LIBS +=		dpkg	0.0 # 0.0

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		PERL_LIBDIR=${LOCALBASE}/libdata/perl5/site_perl \

.include <bsd.port.mk>
