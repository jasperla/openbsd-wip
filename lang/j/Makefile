# $OpenBSD$

V =		805
COMMENT =	high-level, general-purpose array programming language
DISTNAME =	j${V}-release-final
PKGNAME =	j-${V}
CATEGORIES =	lang

SHARED_LIBS +=	j		0.0 # 0.0

HOMEPAGE =	http://www.jsoftware.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c edit m ncurses

MASTER_SITES =	https://github.com/jsoftware/jsource/archive/

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/jsource-${DISTNAME}
WRKSRC =	${WRKDIST}/jsrc

post-extract:
	@cp ${FILESDIR}/Makefile ${WRKSRC}/Makefile
	@cp ${WRKSRC}/jversion-x.h ${WRKSRC}/jversion.h
	@rm -f ${WRKDIST}/jlibrary/copy_library_from_current.bat

pre-configure:
	sed -i 's,$${LIBj_VERSION},${LIBj_VERSION},g' ${WRKSRC}/Makefile
	sed -i 's,__linux__,__OpenBSD__,g' ${WRKSRC}/js.h
	sed -i 's,$${TRUEPREFIX},${TRUEPREFIX},g' \
		${WRKDIST}/jlibrary/bin/profile.ijs

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/j ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/libj.so.${LIBj_VERSION} ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/j
	cd ${WRKDIST}/jlibrary && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/j/{}" \;
	cd ${WRKDIST}/jlibrary && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/j/{}" \;

.include <bsd.port.mk>
