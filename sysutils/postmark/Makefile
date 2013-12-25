# $OpenBSD$

COMMENT =		NFS mail server workload

PKGNAME =		postmark-1.5

CATEGORIES =		sysutils benchmarks

HOMEPAGE =		http://fsbench.filesystems.org/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes

# Artistic License
MASTER_SITES =		http://fsbench.filesystems.org/bench/

src =			postmark-1_5.c
DISTFILES =		${src}
EXTRACT_ONLY =
DIST_SUBDIR =		postmark

NO_TEST =		Yes

WRKDIST =		${WRKDIR}

do-extract:
	cp ${DISTDIR}/postmark/${src} ${WRKDIR}

do-build:
	cd ${WRKSRC}; \
	${CC} ${CPPFLAGS} -Wall ${CFLAGS} ${LDFLAGS} ${src} -o postmark

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/postmark ${PREFIX}/bin/

.include <bsd.port.mk>
