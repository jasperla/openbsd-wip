# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT=	C library for handling SMF files

V=		1.3
DISTNAME=	libsmf-${V}

SHARED_LIBS +=	smf		0.0 # 0.0

CATEGORIES=	audio

HOMEPAGE=	https://sourceforge.net/projects/libsmf/

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c curses glib-2.0 iconv intl m pcre pthread readline

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libsmf/}

LIB_DEPENDS=	devel/glib2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-static=no

# requires library gcov
NO_TEST =	Yes

.include <bsd.port.mk>
