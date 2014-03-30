# $OpenBSD$

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		class libraries for FPC that emulate Delphi

V =			1.2
DISTNAME =		lazarus-${V}-0
PKGNAME =		lazarus-${V}

FPC_V =			2.6.4

CATEGORIES =		devel

HOMEPAGE =		http://lazarus.freepascal.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 atk-1.0 c cairo gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 pango-1.0
WANTLIB += pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=lazarus/}

MODULES =		converters/libiconv
BUILD_DEPENDS =		lang/fpc>=${FPC_V}
RUN_DEPENDS =		lang/fpc>=${FPC_V}
LIB_DEPENDS =		x11/gtk+2

MAKE_ENV =		PPC_CONFIG_PATH="${WRKDIR}" MKDIRPROG=/bin/mkdir \
			ECHO=/bin/echo GINSTALL=/usr/bin/install \
			DATE=/bin/date TARPROG=/bin/tar \
			FPCDIR="${LOCALBASE}/lib/fpc/${FPC_V}"

.if ${MACHINE_ARCH} == "amd64"
CONFIG =                x86_64-openbsd
.else
CONFIG =                i386-openbsd
.endif

SUBST_VARS +=		CONFIG

USE_GMAKE =		Yes

#NO_REGRESS =		Yes

WRKDIST =		${WRKDIR}/lazarus

post-extract:
	cd ${WRKSRC}/ide/include && mkdir openbsd && cp netbsd/lazconf.inc \
		openbsd

do-configure:
	${LOCALBASE}/bin/fpcmkcfg -d "basepath=${LOCALBASE}/lib/fpc/${FPC_V}" \
		-o ${WRKDIR}/fpc.cfg
	cd ${WRKSRC} && env FPCDIR="${LOCALBASE}/lib/fpc/${FPC_V}" \
		find . -name Makefile.fpc -exec ${LOCALBASE}/bin/fpcmake {} \;

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/lazarus
	find ${PREFIX}/share/lazarus -type d -exec chmod ${DIRMODE} {} \+
	find ${PREFIX}/share/lazarus -type f -exec chmod ${SHAREMODE} {} \+
	cd ${PREFIX}/share/lazarus && \
		chown ${BINOWN}:${BINGRP} lazarus startlazarus lazbuild && \
		chmod ${BINMODE} lazarus startlazarus lazbuild
.for _b in lazarus-ide lazarus
	cd ${PREFIX}/bin && ln -sf ../share/lazarus/lazarus ${_b}
.endfor
	cd ${PREFIX}/bin && ln -sf ../share/lazarus/startlazarus .
	cd ${PREFIX}/bin && ln -sf ../share/lazarus/lazbuild .

.include <bsd.port.mk>
