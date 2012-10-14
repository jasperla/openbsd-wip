# $OpenBSD$

SHARED_ONLY =		Yes

COMMENT =		Common Deskop Environment

V =			2.2.0c
DISTNAME =		cde-src-$V-alpha
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
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += ICE Mrm SM Uil X11 Xau Xdmcp Xext Xm Xmu Xp Xt c
WANTLIB += m stdc++ util

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cdesktopenv/}

MODULES =		lang/tcl \
			converters/libiconv
BUILD_DEPENDS =		lang/gawk \
			print/xprintproto
#RUN_DEPENDS =		???
LIB_DEPENDS =		x11/openmotif

LOCALSTATEDIR =		${BASELOCALSTATEDIR}/dt
SYSCONFDIR =		${BASESYSCONFDIR}/dt
CDEDIR =		${TRUEPREFIX}/dt
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

NO_REGRESS =		Yes

CFLAGS =		-g
WRKDIST =		${WRKDIR}/${PKGNAME}

ALL_TARGET =		World

post-patch:
	# this actually makes our awk segfault
	perl -pi -e "s,/usr/bin/awk,${LOCALBASE}/bin/gawk," \
		${WRKSRC}/admin/IntegTools/dbTools/udbToAny.ksh
	# XXX use SUBST_CMD for most of this
	perl -pi -e "s,/usr/dt/lib,${WRKINST}${PREFIX}/lib,g; \
		     s,/usr/local/dt/lib,${WRKINST}${PREFIX}/lib,g; \
		     s,2\.1,${CDE_SHVERSION},g" \
		${WRKSRC}/databases/CDE-SHLIBS.src
	cd ${WRKSRC}/databases/ && perl -pi -e \
		"s,/usr/dt,${WRKINST}${CDEDIR},g" *.udb *.src

do-install:
	cd ${WRKSRC}/admin/IntegTools/dbTools && env -i \
		INSTALL_LOCATION="${PREFIX}" \
		CONFIGURE_LOCATION="${PREFIX}/share/examples/cde" \
		/bin/sh ./installCDE -s ${WRKSRC}
	rm ${WRKINST}${CDEDIR}/bin/ttrmdir
	cd ${WRKINST}${CDEDIR}/bin && ln -s ttrm ttrmdir

.include <bsd.port.mk>
