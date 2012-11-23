# $OpenBSD$

ONLY_FOR_ARCHS =	${GCC4_ARCHS}

COMMENT =	detecting ABI changes between releases of shared libs
DISTNAME =	abi-compliance-checker-1.98.4
CATEGORIES =	devel
HOMEPAGE =	http://ispras.linuxbase.org/index.php/ABI_compliance_checker
REVISION =	0

# GPLv2+ or LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://cloud.github.com/downloads/lvc/abi-compliance-checker/

RUN_DEPENDS =	devel/ectags

NO_BUILD =		Yes
NO_REGRESS =		Yes

do-install:
	cd ${WRKSRC} && perl Makefile.pl -install --prefix=${TRUEPREFIX}

.include <bsd.port.mk>
