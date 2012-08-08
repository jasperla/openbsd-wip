# $OpenBSD$

#ONLY_FOR_ARCHS =	???
#NOT_FOR_ARCHS =	???
#SHARED_ONLY =		???

COMMENT =		Common Deskop Environment

V =			2.2.0a
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

#WANTLIB =		???

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cdesktopenv/}

MODULES =		lang/tcl
BUILD_DEPENDS =		lang/gawk \
			print/printproto
#RUN_DEPENDS =		???
LIB_DEPENDS =		x11/openmotif
#REGRESS_DEPENDS =	???

LOCALSTATEDIR =		${BASELOCALSTATEDIR}/dt
SYSCONFDIR =		${BASESYSCONFDIR}/dt
CDEDIR =		${TRUEPREFIX}/dt
BOOTSTRAPCFLAGS =	${CFLAGS} -I${X11BASE}/include -I${X11BASE}/include/X11
#BOOTSTRAPCFLAGS =	${CFLAGS}
#MAKE_FLAGS =		???
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
#REGRESS_FLAGS =	???

#USE_GMAKE =		Yes
#USE_GROFF =		Yes
#USE_LIBTOOL =		Yes
# XXX only works with included imake at this point
#CONFIGURE_STYLE =	imake
#CONFIGURE_SCRIPT =	??? (if other than configure)
XMKMF =			xmkmf -a -DBOOTSTRAPCFLAGS="\'${BOOTSTRAPCFLAGS}\'"
#CONFIGURE_ENV =		

#NO_BUILD =		Yes
#NO_REGRESS =		Yes

CFLAGS =		-g
#LDFLAGS =		???
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
WRKDIST =		${WRKDIR}/cde
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

#ALL_TARGET =		Everything
ALL_TARGET =		World.dev
#INSTALL_TARGET =	???
#REGRESS_TARGET =	???

#post-extract:
#	mkdir -p ${WRKSRC}/imports/x11
#	cd ${WRKSRC}/imports/x11 && ln -s ${X11BASE}/include .
#	mkdir -p ${WRKSRC}/imports/motif/include
#	cd ${WRKSRC}/imports/motif/include && ln -s ${LOCALBASE}/include/Xm .
#	cd ${WRKSRC}/imports/motif/include && ln -s ${LOCALBASE}/include/Mrm .

post-patch:
	# this actually makes our awk segfault
	perl -pi -e "s,/usr/bin/awk,${LOCALBASE}/bin/gawk," \
		${WRKSRC}/admin/IntegTools/dbTools/udbToAny.ksh
	# XXX use SUBST_CMD for most of this
	cd ${WRKSRC}/databases/ && perl -pi -e \
		"s,/usr/dt,${WRKINST}${CDEDIR},g" *.udb *.src
	perl -pi -e "s,%%PREFIX%%,${WRKINST}${PREFIX},g; \
		     s,%%SHVERSION%%,${CDE_SHVERSION},g" \
		${WRKSRC}/databases/CDE-SHLIBS.src

do-install:
	cd ${WRKSRC}/admin/IntegTools/dbTools && env -i \
		INSTALL_LOCATION="${PREFIX}" \
		CONFIGURE_LOCATION="${PREFIX}/share/examples/cde" \
		LOGFILES_LOCATION="${WRKINST}${LOCALSTATEDIR}" \
		/bin/sh ./installCDE -s ${WRKSRC}

.include <bsd.port.mk>
