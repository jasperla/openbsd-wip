# $OpenBSD: Makefile,v 1.5 2010/11/20 19:56:51 espie Exp $

COMMENT =		RDF Query Library for Redland
DISTNAME =		rasqal-0.9.28
CATEGORIES =		textproc

SHARED_LIBS =		rasqal	2.0 # 3.0

HOMEPAGE =		http://librdf.org/rasqal/

MASTER_SITES =		http://download.librdf.org/source/

# LGPL 2.1, GPL 2 or Apache 2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB+=		c crypto idn iconv intl m ssl z curl>=12 raptor2 \
			xml2>=7 xslt>=1

MODULES =		devel/gettext

USE_LIBTOOL =		Yes

BUILD_DEPENDS =		textproc/raptor

LIB_DEPENDS =		net/curl \
			textproc/libxml \
			textproc/libxslt \
			textproc/raptor

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
