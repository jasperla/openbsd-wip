# $OpenBSD$

COMMENT =		GUI controller for Tor

DISTNAME =		vidalia-0.2.15

CATEGORIES =		net

HOMEPAGE =		http://www.torproject.org/projects/vidalia.html.en

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+ with OpenSSL exception, Oxygen icons under LGPLv3+, other components
# under BSD-style licenses (see ${WRKSRC}/LICENSE)
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		QtGui QtNetwork QtXml c m pthread stdc++

VMEM_WARNING =		Yes

MASTER_SITES =		http://www.torproject.org/dist/vidalia/

MODULES =		x11/qt4 \
			devel/cmake
RUN_DEPENDS =		net/tor

NO_REGRESS =		Yes

.include <bsd.port.mk>
