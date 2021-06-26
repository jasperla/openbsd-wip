# $OpenBSD: Makefile.template,v 1.90 2021/02/25 21:59:27 sthen Exp $

COMMENT=	MIDI synthesizer library with OPL3 emulator

GH_ACCOUNT=	Wohlstand
GH_PROJECT=	libADLMIDI
GH_COMMIT =	d1270566785345a60e6f7063afbebb001cc493f3
#PKGNAME=	${DISTNAME:L}
DISTNAME=	libadlmidi-1.5.0

SHARED_LIBS=	ADLMIDI		0.0 # 1.5.0

CATEGORIES=	audio

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

CONFIGURE_ARGS=	-DlibADLMIDI_SHARED=ON \
		-DWITH_UNIT_TESTS=ON

.include <bsd.port.mk>
