# $OpenBSD: Makefile.template,v 1.90 2021/02/25 21:59:27 sthen Exp $

COMMENT=	MIDI synthesizer library with OPL3 emulator

GH_ACCOUNT=	Wohlstand
GH_PROJECT=	libOPNMIDI
GH_COMMIT=	88f9f068fc84302e26c2b5f5a79a0b3c5491c7f7
DISTNAME=	libopnmidi-1.5.0

SHARED_LIBS=	OPNMIDI		0.0 # 1.5.0

CATEGORIES=	audio

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

CONFIGURE_ARGS=	-DlibOPNMIDI_SHARED=ON \
		-DWITH_UNIT_TESTS=ON

.include <bsd.port.mk>
