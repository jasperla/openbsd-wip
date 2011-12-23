# $OpenBSD$

COMMENT = Portable C compiler

DISTNAME = pcc-1.0.0
CATEGORIES = lang
MASTER_SITES = http://pcc.ludd.ltu.se/ftp/pub/pcc-releases/ \
	ftp://pcc.ludd.ltu.se/pub/pcc-releases/
EXTRACT_SUFX = .tgz

HOMEPAGE = http://pcc.ludd.ltu.se/
MAINTAINER = Eric Radman <ericshane@eradman.com>

# BSD
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

WANTLIB += c

CONFIGURE_STYLE = gnu

do-regress:
	cd ${WRKBUILD} && ./cc/cc/pcc --version

.include <bsd.port.mk>
