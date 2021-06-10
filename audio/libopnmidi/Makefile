# $OpenBSD: Makefile.template,v 1.90 2021/02/25 21:59:27 sthen Exp $

COMMENT=	MIDI synthesizer library with OPL3 emulator

GH_ACCOUNT=	Wohlstand
GH_PROJECT=	libOPNMIDI
GH_COMMIT=	90e8c2c0c10dfe8f1680b1155b8b9087a7baf4e2
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
