# $OpenBSD: Makefile.template,v 1.65 2013/03/21 08:46:31 ajacoutot Exp $

V =			2.04
COMMENT =		beyond grep
# non-standard extension (not an archive, plain perl script)
DISTFILES =		ack-${V}-single-file
PKGNAME =		ack-${V}

CATEGORIES =		sysutils textproc

HOMEPAGE =		http://beyondgrep.com/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# Artistic License 2.0 - Don't patch?!
#
# You are permitted to use the Standard Version and create and use Modified
# Versions for any purpose without restriction, provided that you do not
# Distribute the Modified Version.
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}

NO_BUILD =		Yes
NO_TEST =		Yes
EXTRACT_ONLY =

do-install:
	${INSTALL_SCRIPT} ${DISTDIR}/${DISTFILES} ${PREFIX}/bin/ack

.include <bsd.port.mk>
