# $OpenBSD$

COMMENT =	Portable C compiler

PCCVER =	1.0.0
DISTNAME =	pcc-${PCCVER}
EXTRACT_SUFX =	.tgz

CATEGORIES =	lang

MASTER_SITES =	http://pcc.ludd.ltu.se/ftp/pub/pcc-releases/ \
		ftp://pcc.ludd.ltu.se/pub/pcc-releases/

HOMEPAGE =	http://pcc.ludd.ltu.se/
MAINTAINER =	Eric Radman <ericshane@eradman.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c

CONFIGURE_STYLE = gnu

CONFIG =	${MACHINE_ARCH:S/amd64/x86_64/}-unknown-openbsd${OSREV}
SUBST_VARS =	PCCVER CONFIG

do-regress:
	cd ${WRKBUILD} && ./cc/cc/pcc --version

.include <bsd.port.mk>
