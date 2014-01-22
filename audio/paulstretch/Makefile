# $OpenBSD$

COMMENT =	program for extreme audio stretching
DISTNAME =	paulstretch-2.2-2
PKGNAME =	paulstretch-2.2.2
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	audio x11

HOMEPAGE =	http://hypermammut.sourceforge.net/paulstretch/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xau Xdmcp Xext Xft Xinerama audiofile c fltk fontconfig
WANTLIB += m mad mxml ogg portaudio pthread stdc++ vorbis vorbisenc
WANTLIB += vorbisfile z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=hypermammut/}

LIB_DEPENDS =	audio/libmad \
		audio/libvorbis \
		audio/portaudio-svn \
		devel/libaudiofile \
		textproc/mxml \
		x11/fltk

NO_TEST =	Yes

post-patch:
	perl -pi -e "s,g\+\+,${CXX} ${CXXFLAGS},g" \
		${WRKSRC}/compile_linux_kissfft.sh
	perl -pi -e "s,malloc.h,stdlib.h,g" ${WRKSRC}/contrib/kiss_fft.h

do-build:
	cd ${WRKSRC} && sh compile_linux_kissfft.sh

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/paulstretch ${PREFIX}/bin

.include <bsd.port.mk>
