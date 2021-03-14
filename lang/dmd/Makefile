# $OpenBSD$

# XXX: i386 too, eventually
ONLY_FOR_ARCHS =	amd64

V =		2.096.0
COMMENT =	compiler for the D programming language
DISTFILES =	dmd-${V}.tar.gz \
		dmd-${V}-bootstrap.tar.gz \
		druntime-${V}.tar.gz \
		phobos-${V}.tar.gz \
		tools-${V}.tar.gz
PKGNAME =	dmd-${V}
CATEGORIES =	lang

HOMEPAGE =	https://dlang.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Boost Software License 1.0
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi m pthread

MASTER_SITES =	https://github.com/ibara/dmd/releases/download/bootstrap/

USE_GMAKE =	Yes
MAKE_ENV =	HOST_CXX="${CXX}" \
		HOST_DMD="${WRKDIR}/dmd-2.096.0-bootstrap/openbsd/bin64/dmd"
MAKE_FILE =	posix.mak

NO_TEST =	Yes

# Fix up the build system.
do-gen:
	sed -i "s,TOPDIR,${WRKDIR},g" \
		${WRKDIR}/druntime-${V}/posix.mak \
		${WRKDIR}/phobos-${V}/posix.mak \
		${WRKDIR}/tools-${V}/posix.mak

# We need to do this manually.
# Yes, this is all really correct.
do-build:
	cd ${WRKDIR}/dmd-${V} && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -f ${MAKE_FILE} && \
			${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -f \
				${MAKE_FILE} install
	mkdir -p ${WRKDIR}/install/openbsd/bin64
	cp ${WRKDIR}/dmd-${V}/generated/openbsd/release/64/dmd{,.conf} \
		${WRKDIR}/install/openbsd/bin64
	cd ${WRKDIR}/druntime-${V} && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -f ${MAKE_FILE} && \
			${SETENV} ${MAKE_PROGRAM} -f ${MAKE_FILE} install
	cd ${WRKDIR}/phobos-${V} && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -f ${MAKE_FILE} && \
			${SETENV} ${MAKE_PROGRAM} -f ${MAKE_FILE} install
	cd ${WRKDIR}/tools-${V} && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -f ${MAKE_FILE} && \
			${SETENV} ${MAKE_PROGRAM} -f ${MAKE_FILE} install

# We need to do this manually too.
# Remove their catdoc command to avoid a conflict.
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
	${INSTALL_PROGRAM} ${WRKDIR}/install/bin/* ${PREFIX}/bin
	rm -f ${PREFIX}/bin/catdoc

.include <bsd.port.mk>
