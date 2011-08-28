# $OpenBSD: Makefile,v 1.5 2010/11/20 19:56:51 espie Exp $

COMMENT=		high-level interface for RDF
DISTNAME=		redland-1.0.14
CATEGORIES=		textproc

SHARED_LIBS=		rdf	0.0 # 0.0

HOMEPAGE=		http://librdf.org/

MASTER_SITES=		http://download.librdf.org/source/

# LGPL 2.1, GPL 2 or Apache 2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB+=	c crypto curl idn iodbc iodbcinst m ssl xml2 \
		xslt z raptor2 rasqal

MODULES=	devel/gettext

LIB_DEPENDS=	databases/iodbc \
		textproc/raptor \
		textproc/rasqal

CONFIGURE_STYLE=	gnu
USE_GROFF =		Yes

CONFIGURE_ARGS=	--with-raptor=system \
		--with-rasqal=system \
		--with-threestore=no \
		--with-sqlite=no \
		--with-mysql=no \
		--with-postgresql=no

.include <bsd.port.mk>
