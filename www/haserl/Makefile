# $OpenBSD: Makefile.template,v 1.54 2008/01/13 16:43:57 espie Exp $

COMMENT=	tiny cgi web script handler using shell or Lua

DISTNAME=	haserl-0.9.29

CATEGORIES=	www

HOMEPAGE=	http://haserl.sourceforge.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

MASTER_SITES= ${MASTER_SITE_SOURCEFORGE:=haserl/}

FLAVORS=	no_lua static
FLAVOR?=

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-bash-extensions \
		LDFLAGS="${LDFLAGS}"
LDFLAGS=	-L${LOCALBASE}/lib

.if !${FLAVOR:Mno_lua}
CONFIGURE_ARGS+= --with-lua
WANTLIB+=	lua m
LIB_DEPENDS=	lang/lua
.endif

.if ${FLAVOR:Mstatic}
LDFLAGS+=	-static
.endif

.include <bsd.port.mk>
