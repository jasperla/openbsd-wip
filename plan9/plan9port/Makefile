# $OpenBSD$

ONLY_FOR_ARCHS =	amd64 i386 powerpc

COMMENT =		Plan 9 from user space

DISTNAME =		plan9port-20111026

CATEGORIES =		plan9

HOMEPAGE =		http://swtch.com/plan9port/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# mostly LPL (see LICENSE)
# certain fonts may NOT be redistributed separately
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		X11 Xext c kvm m pthread util

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.tgz

WRKDIST =		${WRKDIR}/plan9

PLAN9 =			${PREFIX}/plan9

post-patch:
	cp ${FILESDIR}/OpenBSD-x86_64-asm.S ${WRKSRC}/src/libthread
	cd ${WRKSRC}/src/libthread && cp Darwin-x86_64-swapcontext.c \
		OpenBSD-x86_64.c

do-build:
	cd ${WRKSRC} && ./INSTALL -b

do-install:
	cd ${WRKSRC} && perl -pi -e 's#/usr/local#${TRUEPREFIX}#' \
		`cat lib/moveplan9.files`
	cp -Rp ${WRKSRC} ${PREFIX}
	cd ${PLAN9} && rm -rf .hg .hgignore .hgtags
	find ${PLAN9} -name .cvsignore -exec rm -f {} \;
	cd ${PREFIX} && ln -s ../plan9/bin/9 bin/9
#	cd ${PLAN9} && env PLAN9_TARGET="${TRUEPREFIX}/plan9" PLAN9="${PLAN9}" \
#		PATH="${PATH}:${PLAN9}/bin" sh lib/moveplan9.sh ${WRKSRC}
#	cd ${WRKSRC} && ./INSTALL -c -r "${PREFIX}/plan9"

.include <bsd.port.mk>
