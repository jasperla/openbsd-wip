# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	DOSBox fork with accurate emulation and wide testing

GH_ACCOUNT =	joncampbell123
GH_PROJECT =	dosbox-x
GH_COMMIT =	2850e1f75c7de9104d21404d4f362c808e25fe54

DISTNAME =	dosbox-x-0.801pl20171024

CATEGORIES =	emulators

HOMEPAGE =	http://dosbox-x.com/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	${COMPILER_LIBCXX} GL SDL SDL_net X11 c m pcap png
WANTLIB +=	z

LIB_DEPENDS =	devel/sdl \
		devel/sdl-net \
		graphics/png

CONFIGURE_STYLE = Gnu

NO_TEST =	Yes

.include <bsd.port.mk>
