# $OpenBSD: Makefile,v 1.10 2013/03/31 21:35:26 bcallah Exp $

VERSION =		3.2
PATCHLEVEL =		.4
SHARED_LIBS =		python3.2m 1.0
VERSION_SPEC =		>=3.2,<3.3

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

CONFIGURE_ARGS +=	--with-cxx_main \
			--with-system-expat

.include <bsd.port.mk>
