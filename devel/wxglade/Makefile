# $OpenBSD$

COMMENT=		GUI designer for wxWidgets/wxPython user interfaces

MODPY_EGG_VERSION=	0.7.0
DISTNAME=		wxGlade-${MODPY_EGG_VERSION}
PKGNAME=		wxglade-${MODPY_EGG_VERSION}

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=wxglade/}

CATEGORIES=		devel x11

HOMEPAGE=		http://wxglade.sourceforge.net/
MAINTAINER=		Daniel Winters <daniel@tydirium.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

RUN_DEPENDS=		x11/py-wxPython \
			devel/desktop-file-utils

post-install:
			@install -d ${PREFIX}/share/applications/
			@mv ${PREFIX}/share/doc/wxglade/wxGlade.desktop \
			    ${PREFIX}/share/applications/

.include <bsd.port.mk>
