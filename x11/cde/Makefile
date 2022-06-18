COMMENT =		Common Deskop Environment

#V =			2.4.0
#DISTNAME =		cde-$V
DISTNAME =		cdesktopenv-code-2a988df4c36a1b782b8221532dfc8b1ccdfc5993
PKGNAME =		cde-2.4.0a

SHARED_LIBS +=  DtHelp                    0.0 # 2.1
SHARED_LIBS +=  DtMmdb                    0.0 # 2.1
SHARED_LIBS +=  DtMrm                     0.0 # 2.1
SHARED_LIBS +=  DtPrint                   0.0 # 2.1
SHARED_LIBS +=  DtSearch                  0.0 # 2.1
SHARED_LIBS +=  DtSvc                     0.0 # 2.1
SHARED_LIBS +=  DtTerm                    0.0 # 2.1
SHARED_LIBS +=  DtWidget                  0.0 # 2.1
SHARED_LIBS +=  DtXinerama                0.0 # 2.1
SHARED_LIBS +=  csa                       0.0 # 2.1
SHARED_LIBS +=  tt                        0.0 # 2.1

CATEGORIES =		x11

HOMEPAGE =		http://cdesktopenv.sourceforge.net/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# LGPLv2.0+, CC-BY-SA 3.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Mrm SM Uil X11 Xau Xdmcp Xext
WANTLIB += Xft Xinerama Xm Xmu Xpm Xrender Xss Xt c expat fontconfig
WANTLIB += freetype iconv jpeg m png tcl86 util xcb z

#MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cdesktopenv/}
MASTER_SITES =		http://distfiles.stumpf.co/
EXTRACT_SUFX =		.zip

MODULES =		lang/tcl
MODTCL_VERSION =	8.6
USE_LIBTOOL =		gnu
BUILD_DEPENDS =		shells/ksh93 \
			textproc/opensp \
			devel/autoconf/${AUTOCONF_VERSION} \
			devel/automake/${AUTOMAKE_VERSION} \
			devel/bison
RUN_DEPENDS =		shells/ksh93
LIB_DEPENDS =		x11/motif \
			${MODTCL_LIB_DEPENDS}

USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu automake
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
CONFIGURE_ARGS =	--with-tcl="${MODTCL_LIBDIR}"
CONFIGURE_ENV =		LIBRARY_PATH="${LOCALBASE}/lib" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE =		Yes
FAKE_FLAGS =		TERMINFO="${WRKINST}${PREFIX}/share/terminfo"

NO_TEST =		Yes

WRKSRC =		${WRKDIST}/cde

PREFIX =		${LOCALBASE}/dt

post-patch:
	cd ${WRKSRC} && env AUTOCONF_VERSION="${AUTOCONF_VERSION}" \
		AUTOMAKE_VERSION="${AUTOMAKE_VERSION}" ./autogen.sh

pre-install:
	mkdir -p ${PREFIX}/share/terminfo

.include <bsd.port.mk>
