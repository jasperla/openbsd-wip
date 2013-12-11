# $OpenBSD $

COMMENT =		FreeBSD kernel stress test suite
DISTNAME =		stress2
VERSION =		1
PKGNAME = 		stress2-${VERSION}

EXTRACT_SUFX = 		.tgz

CATEGORIES =		sysutils devel
HOMEPAGE =		https://people.freebsd.org/~pho/stress

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES            = ${HOMEPAGE}/src/

WANTLIB += c m stdc++

do-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/stress2/
		${INSTALL_DATA_DIR} ${PREFIX}/share/stress2/testcases
		${INSTALL_DATA_DIR} ${PREFIX}/share/stress2/misc
		${INSTALL_DATA_DIR} ${PREFIX}/share/stress2/tools
		${INSTALL_DATA} ${WRKSRC}/*.cfg ${PREFIX}/share/stress2/
		${INSTALL_DATA} ${WRKSRC}/misc/* ${PREFIX}/share/stress2/misc/
		${INSTALL_DATA} ${WRKSRC}/tools/*.{sh,c} ${PREFIX}/share/stress2/tools/
		${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/stress2/
		${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/stress2/
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/badcode/badcode ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/creat/creat ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/fts/fts ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/link/link ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/lockf/lockf ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/lockf2/lockf2 ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/mkdir/mkdir ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/mkfifo/mkfifo ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/mmap/mmap ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/openat/openat ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/pty/pty ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/rename/rename ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/run/run ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/rw/rw ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/shm/shm ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/socket/socket ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/swap/swap ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/symlink/symlink ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/syscall/syscall ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/sysctl/sysctl ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/tcp/tcp ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/thr1/thr1 ${PREFIX}/share/stress2/testcases
		${INSTALL_PROGRAM} ${WRKSRC}/testcases/udp/udp ${PREFIX}/share/stress2/testcases

.include <bsd.port.mk>
