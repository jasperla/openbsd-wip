# $OpenBSD: Makefile,v 1.12 2016/03/20 19:57:07 naddy Exp $

COMMENT= 		POE Filter for parsing XML

DISTNAME=		POE-Filter-XML-1.140700
CATEGORIES=		textproc

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-MooseX-NonMoose \
			devel/p5-MooseX-InsideOut \
			textproc/p5-XML-SAX>=0.16 \
			textproc/p5-XML-LibXML

.include <bsd.port.mk>
