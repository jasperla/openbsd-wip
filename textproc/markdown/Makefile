# $OpenBSD: Makefile,v 1.13 2013/03/11 11:42:42 espie Exp $

COMMENT=		text-to-HTML conversion tool

MODPY_EGG_VERSION =	2.3.1
DISTNAME=		Markdown-${MODPY_EGG_VERSION}
PKGNAME=		markdown-${MODPY_EGG_VERSION}
CATEGORIES=		textproc

HOMEPAGE =		https://pypi.python.org/pypi/Markdown

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python

MASTER_SITES=	${MASTER_SITE_PYPI:=M/Markdown/}
NO_TEST=	Yes

.include <bsd.port.mk>
