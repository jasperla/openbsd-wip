# $OpenBSD$

COMMENT =		Trinity desktop environment, development apps

DISTNAME =		kdevelop-${TDE_V}

SHARED_LIBS +=  designerintegration       0.0 # 0.0
SHARED_LIBS +=  documentation_interfaces  0.0 # 0.0
SHARED_LIBS +=  gdbmi_parser              0.0 # 0.0
SHARED_LIBS +=  kdevbuildbase             0.0 # 0.0
SHARED_LIBS +=  kdevbuildtoolswidgets     0.0 # 0.0
SHARED_LIBS +=  kdevcatalog               0.0 # 0.0
SHARED_LIBS +=  kdevcppparser             0.0 # 0.0
SHARED_LIBS +=  kdevelop                  0.0 # 1.0
SHARED_LIBS +=  kdevextras                0.0 # 0.0
SHARED_LIBS +=  kdevpropertyeditor        0.0 # 0.0
SHARED_LIBS +=  kdevqmakeparser           0.0 # 0.0
SHARED_LIBS +=  kdevshell                 0.0 # 0.0
SHARED_LIBS +=  kdevwidgets               0.0 # 0.0
SHARED_LIBS +=  lang_debugger             0.0 # 0.0
SHARED_LIBS +=  lang_interfaces           0.0 # 0.0
SHARED_LIBS +=  profileengine             0.0 # 0.0

WANTLIB += DCOP ICE SM X11 Xcomposite Xrender apr-1 c cvsservice
WANTLIB += db expat fontconfig freetype idn jpeg kabc
WANTLIB += kdecore kdefx kdeprint kdesu kdeui khtml kio kjs kparts
WANTLIB += kresources kscript ktexteditor kutils kwalletclient
WANTLIB += m pthread stdc++ svn_client-1 svn_ra-1 svn_subr-1 tqt
WANTLIB += util vcard z

MODULES =		devel/gettext \
			x11/tde
BUILD_DEPENDS =		archivers/gtar
LIB_DEPENDS =		x11/tde/sdk \
			devel/subversion

MAKE_ENV =		TAR=gtar

CONFIGURE_ARGS +=	-DWITH_BUILDTOOL_ALL=ON \
			-DWITH_LANGUAGE_ALL=ON \
			-DWITH_VCS_ALL=ON \
			-DBUILD_ALL=ON \
			-DCMAKE_REQUIRED_LIBRARIES="-L${LOCALBASE}/lib"

CFLAGS +=		-I${LOCALBASE}/include/db4
WRKDIST =		${WRKDIR}/kdevelop

.include <bsd.port.mk>
