# $OpenBSD: Makefile.template,v 1.77 2018/02/09 17:08:33 sthen Exp $

COMMENT =	fork of cdparanoia that uses libcdio for CDROM access
# 10.2 is the cdparanoia version that this is based upon.
# 0.94+2 is the actual version number. I replaced the plus.
DISTNAME =	libcdio-paranoia-10.2+0.94+2
PKGNAME =	libcdio-paranoia-0.94.2

SHARED_LIBS +=  cdio_cdda                 0.0 # 2.0
SHARED_LIBS +=  cdio_paranoia             0.0 # 2.0

CATEGORIES =	audio
HOMEPAGE =	https://www.gnu.org/software/libcdio/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c cdio iconv m

MASTER_SITES =		${MASTER_SITE_GNU:=libcdio/}

LIB_DEPENDS =		audio/libcdio>=2.0.0

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
