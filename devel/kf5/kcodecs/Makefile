# $OpenBSD: Makefile,v 1.4 2017/07/27 09:34:37 sthen Exp $

COMMENT =	string encoding/decoding for KDE
DISTNAME =	kcodecs-${VERSION}

SHARED_LIBS =	KF5Codecs		3.0

WANTLIB =	${COMPILER_LIBCXX} Qt5Core m

BUILD_DEPENDS +=	devel/gperf
RUN_DEPENDS +=		devel/gperf

.include <bsd.port.mk>
