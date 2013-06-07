# $OpenBSD $

COMMENT =		FreeBSD kernel stress test suite
DISTNAME =		stress2
PKGNAME = 		stress2

EXTRACT_SUFX = 		.tgz

CATEGORIES =		sysutils devel
HOMEPAGE =			http://people.freebsd.org/~pho/stress

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES            = ${HOMEPAGE}/src/

WANTLIB += c m stdc++

do-install:
		${INSTALL_DATA_DIR} ${PREFIX}/local/share/doc/stress2/
		${INSTALL_DATA_DIR} ${PREFIX}/local/share/stress2/testcases
		${INSTALL_DATA_DIR} ${PREFIX}/local/share/stress2/misc
		${INSTALL_DATA_DIR} ${PREFIX}/local/share/stress2/tools
		${INSTALL_DATA} 	${WRKSRC}/*.cfg ${PREFIX}/local/share/stress2/
		${INSTALL_DATA} 	${WRKSRC}/misc/* ${PREFIX}/local/share/stress2/misc/
		#${INSTALL_DATA} 	${WRKSRC}/tools ${PREFIX}/local/share/stress2/tools/
		${INSTALL_DATA} 	${WRKSRC}/README ${PREFIX}/local/share/doc/stress2/
		${INSTALL_DATA} 	${WRKSRC}/doc/* ${PREFIX}/local/share/doc/stress2/
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/badcode/badcode ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/creat/creat ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/fts/fts ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/link/link ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/lockf/lockf ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/lockf2/lockf2 ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/mkdir/mkdir ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/mkfifo/mkfifo ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/mmap/mmap ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/openat/openat ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/pty/pty ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/rename/rename ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/run/run ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/rw/rw ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/shm/shm ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/socket/socket ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/swap/swap ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/symlink/symlink ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/syscall/syscall ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/sysctl/sysctl ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/tcp/tcp ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/thr1/thr1 ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/thr2/thr2 ${PREFIX}/local/share/stress2/testcases
		${INSTALL_PROGRAM}     ${WRKSRC}/testcases/udp/udp ${PREFIX}/local/share/stress2/testcases

.include <bsd.port.mk>
