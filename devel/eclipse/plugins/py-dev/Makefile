# $OpenBSD: Makefile,v 1.9 2013/02/07 20:21:03 jasper Exp $

COMMENT =	Python development plug-in for Eclipse

V =		2.7.1
SVN =		2012100913
SUBST_VARS =	V SVN
DISTNAME =	PyDev%20${V}
PKGNAME =	py-dev-${V}

CATEGORIES +=	lang/python

HOMEPAGE =	http://www.pydev.org/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# Eclipse Public License
PERMIT_PACKAGE_CDROM =	EPL Indemnify clause
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pydev/}

#cd ${WRKDIST} && pax -rwL features plugins ${PREFIX}/eclipse4
#find ${PREFIX}/eclipse4 -type f -print | xargs chmod 644;
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/eclipse4/
	cd ${WRKDIST} && cp -R features plugins ${PREFIX}/eclipse4

.include <bsd.port.mk>
