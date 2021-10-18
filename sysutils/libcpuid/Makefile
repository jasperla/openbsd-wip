# $OpenBSD: $

# don't bother with i386 unless needed
ONLY_FOR_ARCHS =	amd64

COMMENT =	small C library for x86 CPU detection and feature extraction
V =			0.5.1
DISTNAME =		libcpuid-${V}
CATEGORIES =		sysutils

SHARED_LIBS =		cpuid	0.0	# 15.1

HOMEPAGE =		https://libcpuid.sourceforge.net/

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/anrieff/libcpuid/releases/download/v${V}/

CONFIGURE_STYLE =	simple

.include <bsd.port.mk>
