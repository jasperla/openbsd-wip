# $OpenBSD: Makefile.template,v 1.54 2008/01/13 16:43:57 espie Exp $

COMMENT =	minimalistic console file manager

MODPY_EGG_VERSION = 1.5.2
DISTNAME =	ranger-${MODPY_EGG_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	http://www.nongnu.org/ranger/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

MASTER_SITES =	http://git.savannah.gnu.org/cgit/ranger.git/snapshot/

MODULES =	lang/python
# libarchive (bsdtar) used as an alternative to atool; see scope.sh patch
RUN_DEPENDS =	archivers/libarchive \
		textproc/py-chardet

NO_REGRESS =	Yes

.include <bsd.port.mk>
