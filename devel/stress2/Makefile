# $OpenBSD $

COMMENT =		FreeBSD kernel stress test suite
DISTNAME =		stress2

EXTRACT_SUFX = 		.tgz

CATEGORIES =		misc devel
HOMEPAGE =			http://people.freebsd.org/~pho/stress/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES            = ${HOMEPAGE}/src/

WANTLIB += c m stdc++
#PREFIX = /usr/

do-install:
		${INSTALL_DATA_DIR}	${PREFIX}/lib
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/stress2/
		${INSTALL_DATA} 	${WRKSRC}/README ${PREFIX}/share/doc/stress2/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/badcode/badcode ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/creat/creat	${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/fts/fts ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/link/link ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/lockf/lockf ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/lockf2/lockf2 ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/mkdir/mkdir ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/mkfifo/mkfifo ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/mmap/mmap ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/openat/openat ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/pty/pty ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/rename/rename ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/run/run ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/rw/rw ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/shm/shm ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/socket/socket ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/swap/swap ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/symlink/symlink ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/syscall/syscall ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/sysctl/sysctl ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/tcp/tcp ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/thr1/thr1 ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/thr2/thr2 ${PREFIX}/bin/
		#${INSTALL_PROGRAM} 	${WRKSRC}/testcases/udp/udp ${PREFIX}/bin/

.include <bsd.port.mk>
