# $OpenBSD$

COMMENT =		MirBSD Korn Shell
DISTNAME =		mksh-R52
PKGNAME =		${DISTNAME:S/R//}
CATEGORIES =		shells
HOMEPAGE =		http://mirbsd.de/mksh

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# BSD (The MirOS Licence, 3-clause BSD and ISC)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =		https://www.mirbsd.org/MirOS/dist/mir/mksh/
EXTRACT_SUFX =		.tgz

CPPFLAGS +=		-DMKSH_ASSUME_UTF8=1
WRKDIST =		${WRKDIR}/mksh
SEPARATE_BUILD =	Yes

do-build:
	cd ${WRKBUILD} && CPPFLAGS="${CPPFLAGS}" /bin/sh ${WRKSRC}/Build.sh -r

do-test:
	cd ${WRKBUILD} && ./mksh ./test.sh

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mksh ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mksh
	${INSTALL_DATA} ${WRKSRC}/dot.mkshrc ${PREFIX}/share/examples/mksh
	${INSTALL_MAN} ${WRKSRC}/mksh.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
