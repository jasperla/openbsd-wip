# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $
SHARED_ONLY =		Yes

COMMENT =		image processing and analysis library

DISTNAME =		vigra-1.10.0

SHARED_LIBS =		vigraimpex 0.0 # 5.1

CATEGORIES =		graphics

HOMEPAGE =		http://ukoethe.github.io/vigra/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM = 	Yes

WANTLIB =		jpeg m png stdc++ tiff z

GH_ACCOUNT =		ukoethe
GH_PROJECT =		vigra
GH_COMMIT =		e6c21f3506d783242222c44b2f4f4ec55afdab01

MODULES =		devel/cmake
LIB_DEPENDS =		graphics/jpeg \
			graphics/png \
			graphics/tiff

CONFIGURE_ARGS +=	-DWITH_VIGRANUMPY=0 \
			-DDOCINSTALL=share/doc/

.include <bsd.port.mk>
