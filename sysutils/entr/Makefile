COMMENT = run arbitrary commands when files change

DISTNAME = entr-1.0
REV = ed33bb691738

CATEGORIES = sysutils

HOMEPAGE = https://bitbucket.org/eradman/entr/

MAINTAINER = Eric Radman <ericshane@eradman.com>

# ISC
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES = http://static.eradman.com/code/ \
	https://bitbucket.org/eradman/entr/get/

WRKDIST = ${WRKDIR}/eradman-entr-${REV}

do-regress:
	cd ${WRKBUILD} && make test

.include <bsd.port.mk>
