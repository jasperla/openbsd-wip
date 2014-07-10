# $OpenBSD$

COMMENT =	command line interface to KeePass database files

DISTNAME =	kpcli-2.7
CATEGORIES =	security
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=kpcli/}

HOMEPAGE =	http://kpcli.sourceforge.net/

MAINTAINER =	Vasily Mikhaylichenko <vaskas@lxmx.com.au>

RUN_DEPENDS=	devel/p5-Term-ReadKey\
		security/p5-Crypt-Rijndael\
		devel/p5-Sort-Naturally\
		devel/p5-File-KeePass\
		devel/p5-Term-ShellUI
BUILD_DEPENDS =	${RUN_DEPENDS}

# GPL
PERMIT_PACKAGE_CDROM =	Yes

EXTRACT_ONLY =
EXTRACT_SUFX = 	.pl
NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

do-install:
	${INSTALL_PROGRAM} ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} \
		${PREFIX}/bin/kpcli

.include <bsd.port.mk>
