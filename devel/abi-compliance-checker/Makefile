# $OpenBSD$

COMMENT =	detecting ABI changes between releases of shared libs
DISTNAME =	1.98.7
PKGNAME =	abi-compliance-checker-${DISTNAME}
CATEGORIES =	devel
HOMEPAGE =	http://ispras.linuxbase.org/index.php/ABI_compliance_checker
REVISION =	0

# GPLv2+ or LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/lvc/abi-compliance-checker/archive/
WRKDIST =	${WRKDIR}/${PKGNAME}

RUN_DEPENDS =	devel/ectags \
		devel/p5-IPC-Run3

NO_BUILD =		Yes

do-install:
	cd ${WRKSRC} && perl Makefile.pl -install --prefix=${TRUEPREFIX}

do-regress:
	cd ${WRKBUILD} && \
	    perl ${WRKSRC}/abi-compliance-checker.pl -test-dump 2>&1 | \
	    awk '{print} /ERROR/ {EC=1} END {exit EC}'

.include <bsd.port.mk>
