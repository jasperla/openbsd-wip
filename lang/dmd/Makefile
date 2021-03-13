# $OpenBSD$

# XXX: i386 too, eventually
ONLY_FOR_ARCHS =	amd64

V =		2.096.0
COMMENT =	compiler for the D programming language
DISTFILES =	dmd-${V}.tar.gz \
		dmd-${V}-bootstrap.tar.gz \
		druntime-${V}.tar.gz \
		phobos-${V}.tar.gz
PKGNAME =	dmd-${V}
CATEGORIES =	lang

HOMEPAGE =	https://dlang.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Boost Software License 1.0
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi m pthread

MASTER_SITES =	https://github.com/ibara/dmd/releases/download/bootstrap/

# Yes really with INSTALL_DIR in MAKE_ENV.
USE_GMAKE =	Yes
MAKE_ENV =	HOST_CXX="${CXX}" \
		HOST_DMD="${WRKDIR}/dmd-2.096.0-bootstrap/openbsd/bin64/dmd"
MAKE_FILE =	posix.mak

NO_TEST =	Yes

# We need to do this manually.
# Yes, this is all really correct.
do-build:
	cd ${WRKDIR}/dmd-${V} && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -f ${MAKE_FILE} && \
			${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -f \
				${MAKE_FILE} install
	cd ${WRKDIR}/druntime-${V} && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -f ${MAKE_FILE} && \
			${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -f \
				${MAKE_FILE} install
	cd ${WRKDIR}/phobos-${V} && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -f ${MAKE_FILE} && \
			${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -f \
				${MAKE_FILE} install

# The install routine isn't adequate.
do-install:
	${INSTALL_PROGRAM} \
		${WRKDIR}/dmd-${V}/generated/openbsd/release/64/dmd \
			${PREFIX}/bin
	${INSTALL_DATA} ${WRKDIR}/install/openbsd/lib64/libphobos2.a \
		${PREFIX}/lib
	${INSTALL_MAN} ${WRKDIR}/install/man/man1/*.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKDIR}/install/man/man5/*.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/include/dmd
	cp -R ${WRKDIR}/install/src/{druntime,phobos} ${PREFIX}/include/dmd
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dmd
	${INSTALL_DATA} ${WRKDIR}/install/phobos-LICENSE.txt \
		${PREFIX}/share/doc/dmd/LICENSE.txt
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dmd
	cp -R ${WRKDIR}/dmd-${V}/samples/* ${PREFIX}/share/examples/dmd
	${INSTALL_DATA_DIR} ${PREFIX}/share/dmd
	${SUBST_CMD} -c -m 444 ${FILESDIR}/dmd.conf \
		${PREFIX}/share/dmd/dmd.conf

.include <bsd.port.mk>
