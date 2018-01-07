# $OpenBSD$

COMMENT =	detecting ABI changes between releases of shared libs

GH_ACCOUNT =	lvc
GH_PROJECT =	abi-compliance-checker
GH_TAGNAME =	2.2

CATEGORIES =	devel

HOMEPAGE =	http://ispras.linuxbase.org/index.php/ABI_compliance_checker

# GPLv2+ or LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/universal-ctags \
		devel/p5-IPC-Run3

TEST_DEPENDS =	${RUN_DEPENDS}

NO_BUILD =	Yes

do-install:
	cd ${WRKSRC} && perl Makefile.pl -install --prefix=${TRUEPREFIX}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/abi-compliance-checker
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/abi-compliance-checker

do-test:
	cd ${WRKBUILD} && \
		perl ${WRKSRC}/abi-compliance-checker.pl -test-dump 2>&1 | \
		awk '{print} /ERROR/ {EC=1} END {exit EC}'

.include <bsd.port.mk>
