# $OpenBSD$

COMMENT =                Red Hat package manager

DISTNAME =               rpm-4.9.1.1
EXTRACT_SUFX =           .tar.bz2
CATEGORIES =             misc archivers emulators
HOMEPAGE =               http://www.rpm.org/
MAINTAINER =             David Cantrell <david.l.cantrell@gmail.com>

SHARED_LIBS +=           rpm                       1.0 \
                         rpmbuild                  1.0 \
                         rpmio                     0.0 \
                         rpmsign                   0.0

# GPLv2+
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

MASTER_SITES =           http://rpm.org/releases/rpm-4.9.x/

WANTLIB +=               bz2 c db lua lzma m magic nspr4 nss3 nssutil3 plc4 \
                         plds4 popt pthread util z ${MODPY_WANTLIB}

MODULES =                devel/gettext \
                         lang/python
RUN_DEPENDS =            security/gnupg
LIB_DEPENDS =            ${MODPY_LIB_DEPENDS} \
                         archivers/xz \
                         databases/db/v4 \
                         devel/libmagic \
                         devel/popt \
                         lang/lua \
                         security/nss

MODPY_SETUPTOOLS =       No

SEPARATE_BUILD =         simple
USE_GMAKE =              Yes
USE_LIBTOOL =            Yes
AUTOCONF_VERSION =       2.68
AUTOMAKE_VERSION =       1.11
CONFIGURE_STYLE =        automake autoconf gnu
CONFIGURE_ARGS +=        --localstatedir=/var \
                         --enable-static=yes \
                         --with-external-db \
                         --enable-python \
                         --with-lua \
                         --without-hackingdocs

RPM_CPPFLAGS =           -I${LOCALBASE}/include \
                         -I${LOCALBASE}/include/db4 \
                         -I${LOCALBASE}/include/nspr \
                         -I${LOCALBASE}/include/nss
RPM_LDFLAGS =            -L${LOCALBASE}/lib \
                         -L${LOCALBASE}/lib/db4 \
                         -L${LOCALBASE}/python${MODPY_VERSION}/config
CONFIGURE_ENV +=         varprefix=/usr \
                         PYTHON_VERSION=${MODPY_VERSION} \
                         GPG=${LOCALBASE}/bin/gpg \
                         CPPFLAGS="${RPM_CPPFLAGS}" \
                         LDFLAGS="${RPM_LDFLAGS}"
MAKE_ENV +=              PATH=${WRKDIR}/test/bin:${PATH}

# Wrapper for 'rpm' for use during testing.  Ensures we use the
# newly-built rpm and a temporary test database.  Initialize the
# temporary test database.
#
# NOTE: rpm and rpmdb are picky about the option order.  rcfile and dbpath
# must come *before* defines.  This is not normally a problem for users as
# it is very uncommon to override rcfile and dbpath.  We are only doing it
# here for the regression tests.
pre-regress:
	mkdir -p ${WRKDIR}/test/bin
	mkdir -p ${WRKDIR}/test/db
	echo "#!/bin/sh -x" > ${WRKDIR}/test/bin/rpm
	echo -n "${WRKBUILD}/rpm --rcfile ${WRKBUILD}/rpmrc --dbpath ${WRKDIR}/test/db --define \"_rpmlock_path ${WRKDIR}/test/db/.rpm.lock\"" >> ${WRKDIR}/test/bin/rpm
	echo ' $$*' >> ${WRKDIR}/test/bin/rpm
	chmod +x ${WRKDIR}/test/bin/rpm
	${WRKBUILD}/rpmdb \
		--rcfile ${WRKBUILD}/rpmrc \
		--dbpath ${WRKDIR}/test/db \
		--define "_rpmlock_path ${WRKDIR}/test/db/.rpm.lock" \
		--initdb

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rpm
.for d in CHANGES COPYING CREDITS ChangeLog GROUPS README
		${INSTALL_DATA} ${WRKSRC}/$d ${PREFIX}/share/doc/rpm/$d
.endfor

.include <bsd.port.mk>
