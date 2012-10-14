# $OpenBSD: Makefile,v 1.5 2010/11/20 19:56:51 espie Exp $

COMMENT =		high-level interface for RDF
DISTNAME =		redland-1.0.15
CATEGORIES =		textproc

SHARED_LIBS =		rdf	1.1 # 0.0

HOMEPAGE =		http://librdf.org/

MASTER_SITES =		http://download.librdf.org/source/

# LGPL 2.1, GPL 2 or Apache 2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB +=	c crypto curl idn iodbc iodbcinst ltdl m ssl xml2
WANTLIB +=	xslt z raptor2 rasqal

MODULES =	devel/gettext

LIB_DEPENDS =	databases/iodbc \
		devel/libtool,-ltdl \
		textproc/raptor \
		textproc/rasqal

CONFIGURE_STYLE =	gnu
USE_LIBTOOL =		gnu
USE_GROFF =		Yes

CONFIGURE_ARGS +=	--with-raptor=system \
			--with-rasqal=system \
			--with-threestore=no \
			--with-sqlite=no \
			--with-mysql=no \
			--with-postgresql=no \
			--with-ltdl-include=${LOCALBASE}/include \
			--with-ltdl-lib=${LOCALBASE}/lib

.include <bsd.port.mk>
