# $OpenBSD$

COMMENT =	XSLT processor for transforming XML documents into HTML

DISTNAME =	Xalan-C_1_10_0-src
PKGNAME =	xalan-c-1.10
CATEGORIES =	textproc devel

MAINTAINER =		Nigel Taylor <nigel@openbsd.org>

WANTLIB += 	c m pthread stdc++ xerces-c
SHARED_LIBS +=	xalan-c 0.0 \
		xalanMsg 0.0

HOMEPAGE =	http://xalan.apache.org/index.html

# Apache 2.0
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

MASTER_SITES =	http://mirrors.ukfast.co.uk/sites/ftp.apache.org/xml/xalan-c/source/

USE_GMAKE =	Yes

WRKSRC =	${WRKDIR}/xml-xalan/c
WRKDIST =	${WRKSRC}
XALANCROOT =	${WRKDIST}

CONFIGURE_SCRIPT = runConfigure
CONFIGURE_STYLE = simple
CONFIGURE_ENV =	XALANCROOT="${XALANCROOT}"
CONFIGURE_ARGS =	-p openbsd -c ${CC} -x ${CXX} -m inmem \
		-t native -r none -P ${PREFIX} -z "-I/usr/local/include" -l "-L/usr/local/lib"

MAKE_ENV =	XALANCROOT="${XALANCROOT}"

RUN_DEPENDS =	textproc/xerces-c
BUILD_DEPENDS =	${RUN_DEPENDS}
LIB_DEPENDS =	textproc/xerces-c

.include <bsd.port.mk>
