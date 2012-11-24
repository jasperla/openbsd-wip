# $OpenBSD$

COMMENT =	detecting ABI changes between releases of shared libs
DISTNAME =	abi-compliance-checker-1.98.4
CATEGORIES =	devel
HOMEPAGE =	http://ispras.linuxbase.org/index.php/ABI_compliance_checker
REVISION =	3

# GPLv2+ or LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://cloud.github.com/downloads/lvc/abi-compliance-checker/

RUN_DEPENDS =	devel/ectags \
		devel/p5-IPC-Run3

NO_BUILD =		Yes

do-install:
	cd ${WRKSRC} && perl Makefile.pl -install --prefix=${TRUEPREFIX}

do-regress:
	cd ${WRKBUILD} && \
	    perl ${WRKSRC}/abi-compliance-checker.pl -test 2>&1 | \
	    awk '{print} /ERROR/ {EC=1} END {exit EC}'

.include <bsd.port.mk>
