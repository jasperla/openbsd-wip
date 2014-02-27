# $OpenBSD$

COMMENT =		set of tools for testing NFS client or NFS server	

DISTNAME =		NFStest-1.0.2
#PKGNAME =		nfstest

CATEGORIES =		sysutils devel

HOMEPAGE =		http://linux-nfs.org

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/~mora/nfstest/releases/

MODULES =		lang/python

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/NFStest/
		${INSTALL_DATA} ${WRKDIST}/{COPYING,PKG-INFO,README,howto-contribute.txt} \
				${PREFIX}/share/doc/NFStest/

.include <bsd.port.mk>
