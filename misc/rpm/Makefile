COMMENT =           Red Hat package manager

DISTNAME =          rpm-4.9.1.1
EXTRACT_SUFX =      .tar.bz2
CATEGORIES =        misc archivers emulators
HOMEPAGE =          http://www.rpm.org/
MAINTAINER =        David Cantrell <david.l.cantrell@gmail.com>

MASTER_SITES =      http://rpm.org/releases/rpm-4.9.x/

WANTLIB +=          bz2 c db lua lzma m magic nspr4 nss3 nssutil3 plc4 \
                    plds4 popt pthread python2.7 util z

MODULES =           devel/gettext \
                    lang/python
RUN_DEPENDS =       security/gnupg
LIB_DEPENDS =       ${MODPY_LIB_DEPENDS} \
                    archivers/xz \
                    databases/db/v4 \
                    devel/libmagic \
                    devel/popt \
                    lang/lua \
                    security/nss

MODPY_SETUPTOOLS =  No

SEPARATE_BUILD =    simple
USE_GMAKE =         Yes
USE_LIBTOOL =       Yes
AUTOCONF_VERSION =  2.68
CONFIGURE_STYLE =   autoconf gnu
CONFIGURE_ARGS +=   --localstatedir=/var \
                    --enable-static=yes \
                    --with-external-db \
                    --enable-python \
                    --with-lua

RPM_CPPFLAGS =      -I${LOCALBASE}/include \
                    -I${LOCALBASE}/include/db4 \
                    -I${LOCALBASE}/include/nspr \
                    -I${LOCALBASE}/include/nss
RPM_LDFLAGS =       -L${LOCALBASE}/lib \
                    -L${LOCALBASE}/lib/db4 \
                    -L${LOCALBASE}/python${MODPY_VERSION}/config
CONFIGURE_ENV +=    varprefix=/usr \
                    PYTHON_VERSION=${MODPY_VERSION} \
                    GPG=${LOCALBASE}/bin/gpg \
                    CPPFLAGS="${RPM_CPPFLAGS}" \
                    LDFLAGS="${RPM_LDFLAGS}"

SHARED_LIBS +=      rpm                       1.0 \
                    rpmbuild                  1.0 \
                    rpmio                     0.0 \
                    rpmsign                   0.0

# GPLv2+
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rpm
	@for d in CHANGES COPYING CREDITS ChangeLog GROUPS README ; do \
		${INSTALL_DATA} ${WRKSRC}/$$d ${PREFIX}/share/doc/rpm/$$d ; \
	done

.include <bsd.port.mk>
