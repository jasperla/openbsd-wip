# $OpenBSD: $

COMMENT = run arbitrary commands when files change

DISTNAME = entr-1.8
REV = f508b5eb0260

CATEGORIES = sysutils

HOMEPAGE = https://bitbucket.org/eradman/entr/

MAINTAINER = Eric Radman <ericshane@eradman.com>

# ISC
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

WANTLIB += c

MASTER_SITES = http://entrproject.org/code/ \
	https://bitbucket.org/eradman/entr/get/

MAKE_FLAGS = CC="${CC}" LDFLAGS="${LDFLAGS}"
WRKDIST = ${WRKDIR}/eradman-entr-${REV}

REGRESS_TARGET = test

.include <bsd.port.mk>
