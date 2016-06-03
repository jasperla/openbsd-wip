# $OpenBSD$


COMMENT =		Common Deskop Environment

V =			2.2.0d
DISTNAME =		cde-src-$V-beta
PKGNAME =		cde-$V

CDE_SHVERSION =		0.0
.for l in DtHelp DtMrm DtPrint DtSearch DtSvc DtTerm DtWidget csa tt
SHARED_LIBS +=  ${l}                      ${CDE_SHVERSION}
.endfor

CATEGORIES =		x11

HOMEPAGE =		http://cdesktopenv.sourceforge.net/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# LGPLv2.0+, CC-BY-SA 3.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE Mrm SM Uil X11 Xau Xdmcp Xext Xm Xmu Xp Xt c
WANTLIB += m stdc++ util

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cdesktopenv/}

MODULES =		lang/tcl \
			converters/libiconv
BUILD_DEPENDS =		print/xprintproto \
			shells/ksh93
RUN_DEPENDS =		shells/ksh93
LIB_DEPENDS =		x11/openmotif

LOCALSTATEDIR =		${BASELOCALSTATEDIR}/dt
SYSCONFDIR =		${BASESYSCONFDIR}/dt
CDEDIR =		${TRUEPREFIX}/dt

SUBST_VARS +=		LOCALSTATEDIR

BOOTSTRAPCFLAGS =	${CFLAGS} -I${X11BASE}/include -I${X11BASE}/include/X11
MAKE_FLAGS =		BOOTSTRAPCFLAGS="${BOOTSTRAPCFLAGS}" \
			IMAKE_DEFINES="-DX11ProjectRoot=${X11BASE} \
			-DCplusplusCmd=${CXX} \
			-DLibraryCplusplusCmd=${CXX} \
			-DProjectRoot=${LOCALBASE} \
			-DCDEProjectRoot=${CDEDIR} \
			-DCdeInstallationTop=${CDEDIR} \
			-DTopMotifInclude=${LOCALBASE}/include \
			-DCdeConfigurationTop=${SYSCONFDIR} \
			-DCdeLogfilesTop=${LOCALSTATEDIR} \
			-DUseInstalledX11=YES \
			-DOptimizedCDebugFlags=\"${CFLAGS}\" \
			-DCDESharedRev=${CDE_SHVERSION} \
			-DTclLibrary=${MODTCL_LIBDIR}"
#FAKE_FLAGS =		???

USE_GROFF =		Yes
# XXX only works with included imake at this point
#CONFIGURE_STYLE =	imake
#CONFIGURE_SCRIPT =	??? (if other than configure)
XMKMF =			xmkmf -a -DBOOTSTRAPCFLAGS="\'${BOOTSTRAPCFLAGS}\'"
#CONFIGURE_ENV =

NO_TEST =		Yes

CFLAGS =		-g
WRKDIST =		${WRKDIR}/cde-$V

ALL_TARGET =		World

# .udb files containing files to install
UDBS =			C DE DEMOS ES FR HELP-C HELP-DE HELP-ES HELP-FR \
			HELP-IT ICONS INC INFO INFOLIB-C \
			IT MAN-DEV MAN MIN MSG-C MSG-DE \
			MSG-ES MSG-FR MSG-IT RUN HELP-RUN HELP-PRG PRG SHLIBS \
			TT

pre-configure:
	# XXX use SUBST_CMD for most of this
	perl -pi -e "s,/usr/dt/lib,${PREFIX}/lib,g; \
		     s,/usr/local/dt/lib,${PREFIX}/lib,g; \
		     s,2\.1,${CDE_SHVERSION},g" \
		${WRKSRC}/databases/CDE-SHLIBS.src
	cd ${WRKSRC}/databases/ && perl -pi -e \
		"s,/usr/dt,${CDEDIR},g" *.udb *.src

do-install:
.for _udb in ${UDBS}
	/bin/sh ${WRKSRC}/admin/IntegTools/dbTools/udbToAny.ksh -toLst \
	-ReleaseStream openbsd ${WRKSRC}/databases/CDE-${_udb}.udb | /bin/sh \
	${WRKSRC}/admin/IntegTools/dbTools/mkProd -D ${WRKINST} -S ${WRKSRC} -
.endfor
	chmod u+s ${WRKINST}${CDEDIR}/bin/dtsession

.include <bsd.port.mk>
