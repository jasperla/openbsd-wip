# $OpenBSD: Makefile,v $

COMMENT = run arbitrary commands when files change

DISTNAME = entr-2.2
REV = 963b395019be

CATEGORIES = sysutils

HOMEPAGE = http://entrproject.org/

MAINTAINER = Eric Radman <ericshane@eradman.com>

# ISC
PERMIT_PACKAGE_CDROM = Yes

WANTLIB += c

MASTER_SITES = http://entrproject.org/code/ \
	https://bitbucket.org/eradman/entr/get/

MAKE_FILE = Makefile.bsd
MAKE_FLAGS = CC="${CC}" LDFLAGS="${LDFLAGS}"
WRKDIST = ${WRKDIR}/eradman-entr-${REV}

TEST_TARGET = test

.include <bsd.port.mk>
