# $OpenBSD$

COMMENT =	batch image processor
PKGNAME =	converseen-${GH_TAGNAME:S/^v//}
CATEGORIES =	graphics multimedia

GH_ACCOUNT =	Faster3ck
GH_PROJECT =	Converseen
GH_TAGNAME =	v0.9.7.1

HOMEPAGE =	http://converseen.fasterland.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM = Yes

WANTLIB += ${COMPILER_LIBCXX} Magick++-6.Q16 MagickCore-6.Q16
WANTLIB += Qt5Core Qt5Gui Qt5Network Qt5Widgets c m

MODULES =	devel/cmake \
		x11/qt5

LIB_DEPENDS =	graphics/ImageMagick

NO_TEST =	Yes

.include <bsd.port.mk>
