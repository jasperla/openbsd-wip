COMMENT =		Common Deskop Environment

V =			2.5.2
DISTNAME =		cde-$V

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

SITES =			${SITE_SOURCEFORGE:=cdesktopenv/}

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

CDEPREFIX =		${PREFIX}/dt

USE_GROFF =		Yes
CONFIGURE_STYLE =	old gnu automake
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
CONFIGURE_ARGS =	--with-tcl="${MODTCL_LIBDIR}" \
			--exec-prefix="${CDEPREFIX}" \
			--includedir="${CDEPREFIX}/include" \
			--mandir="${CDEPREFIX}/man" \
			--datarootdir="${CDEPREFIX}/share" \
			--sysconfdir="${SYSCONFDIR}"
CONFIGURE_ENV =		LIBRARY_PATH="${LOCALBASE}/lib" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PREFIX="${CDEPREFIX}" \
			KSH="${LOCALBASE}/bin/ksh93"

USE_GMAKE =		Yes
MAKE_FLAGS =		PREFIX="${CDEPREFIX}" \
			CDE_INSTALLATION_TOP="${CDEPREFIX}"
FAKE_FLAGS =		PREFIX="${WRKINST}${CDEPREFIX}" \
			TERMINFO="${WRKINST}${CDEPREFIX}/share/terminfo" \
			fontaliasesconfdir="${PREFIX}/share/examples/cde"

NO_TEST =		Yes

post-patch:
	cd ${WRKSRC} && env AUTOCONF_VERSION="${AUTOCONF_VERSION}" \
		AUTOMAKE_VERSION="${AUTOMAKE_VERSION}" ./autogen.sh
	perl -pi -e "s,/usr/dt,${CDEPREFIX},g" \
		${WRKSRC}/programs/types/*.{dt,src} \
		${WRKSRC}/programs/tttypes/*.ptype \
		${WRKSRC}/programs/dthelp/dthelpgen/dthelpgen.dtsh \
		${WRKSRC}/programs/dtprintegrate/*.src

pre-install:
	mkdir -p ${CDEPREFIX}/share/terminfo \
		${PREFIX}/share/examples/cde


.include <bsd.port.mk>
