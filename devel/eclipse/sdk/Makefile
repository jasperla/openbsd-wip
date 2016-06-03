# $OpenBSD$

ONLY_FOR_ARCHS=		amd64 i386

COMMENT=		multi-language software development environment

ECLIPSE_VER=		4.2.2
NATIVES_SNAPSHOT=	20130306235606

DISTNAME=		eclipse-sdk
PKGNAME=		eclipse-sdk-${ECLIPSE_VER}

SDKDIST-amd64=		eclipse-SDK-${ECLIPSE_VER}-linux-gtk-x86_64.tar.gz
SDKDIST-i386=		eclipse-SDK-${ECLIPSE_VER}-linux-gtk.tar.gz
SDKDIST=		${SDKDIST-${MACHINE_ARCH}}
NATIVESDIST=		eclipse-natives-${NATIVES_SNAPSHOT}.tar.gz
DISTFILES=		${SDKDIST} ${NATIVESDIST}:0
SUPDISTFILES=		${SDKDIST-amd64} ${SDKDIST-i386}
EXTRACT_ONLY=		${NATIVESDIST}
WRKDIST=		${WRKDIR}/natives

CATEGORIES=		devel/eclipse

HOMEPAGE=		http://www.eclipse.org/

MAINTAINER=		Matthew Dempsky <matthew@openbsd.org>

# Licenses are detailed in about.html and notice.html and include:
#
# Eclipse Public License Version 1.0 (http://www.eclipse.org/legal/epl-v10.html)
# Common Public License 1.0 (http://www.eclipse.org/legal/cpl-v10.html)
# Apache Software License 1.1 (http://www.apache.org/licenses/LICENSE)
# Apache Software License 2.0 (http://www.apache.org/licenses/LICENSE-2.0)
# Metro Link Public License 1.00 (http://www.opengroup.org/openmotif/supporters/metrolink/license.html)
# Mozilla Public License Version 1.1 (http://www.mozilla.org/MPL/MPL-1.1.html)
# LGPL 2.1 (http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html)
PERMIT_PACKAGE_CDROM=	commercial distribution defend and indemnify clauses

MASTER_SITE_ECLIPSE+=	\
	http://www.eclipse.org/downloads/download.php?r=1&file=/eclipse/downloads/drops4/

MASTER_SITES=		${MASTER_SITE_ECLIPSE:=R-${ECLIPSE_VER}-201302041200/}

# XXX(matthew): Hack... for getting the eclipse-natives snapshot
MASTER_SITES0=		file://${FILESDIR}/

MODULES=		java
MODJAVA_VER=		1.6+

BUILD_DEPENDS=		archivers/unzip \
			archivers/zip \
			devel/gmake \
			devel/xulrunner/1.9,-devel

RUN_DEPENDS=		${MODJAVA_RUN_DEPENDS} \
			devel/xulrunner/1.9

LIB_DEPENDS=		www/webkit \
			x11/gnome/libgnomeui

WANTLIB+=		c pthread

ECLIPSE_WS=		gtk
ECLIPSE_OS=		linux
ECLIPSE_ARCH-amd64=	x86_64
ECLIPSE_ARCH-i386=	x86
ECLIPSE_ARCH=		${ECLIPSE_ARCH-${MACHINE_ARCH}}

MAKE_ENV=		DEFAULT_OS_ARCH=${ECLIPSE_ARCH} \
			DEFAULT_OS=${ECLIPSE_OS} \
			DEFAULT_WS=${ECLIPSE_WS} \
			JAVA_HOME=${JAVA_HOME} \
			CC="${CC}" CXX="${CXX}" \
			CFLAGS="${CFLAGS} -I${X11BASE}/include" \
			MACHINE_ARCH="${MACHINE_ARCH}"

SUBST_VARS=		ECLIPSE_ARCH

NO_TEST=		Yes

JAR=			${JAVA_HOME}/bin/jar

SWT_MINOR=		4236
SWT_GTK_VER=		3.100.1.v${SWT_MINOR}b

CORE_FILESYSTEM_VER-amd64=	1.2.0.v20120522-1137
CORE_FILESYSTEM_VER-i386=	1.4.0.v20120522-1137
CORE_FILESYSTEM_VER=		${CORE_FILESYSTEM_VER-${MACHINE_ARCH}}
CORE_NET_VER-amd64=		1.1.0.v20120522-1148
CORE_NET_VER-i386=		1.1.200.v20120522-1148
CORE_NET_VER=			${CORE_NET_VER-${MACHINE_ARCH}}

SUBST_VARS +=			CORE_FILESYSTEM_VER CORE_NET_VER

SDK_PROFILE_STAMP-amd64=	1339185524444
SDK_PROFILE_STAMP-i386=		1339185402329
SDK_PROFILE_STAMP=		${SDK_PROFILE_STAMP-${MACHINE_ARCH}}

SUBST_VARS +=			SDK_PROFILE_STAMP

post-extract:
	tar -zxf ${FULLDISTDIR}/${SDKDIST} \
	    -C ${WRKDIST} eclipse/plugins/org.eclipse.swt.gtk.linux.${ECLIPSE_ARCH}.source_${SWT_GTK_VER}.jar
	unzip -q ${WRKDIST}/eclipse/plugins/org.eclipse.swt.gtk.linux.${ECLIPSE_ARCH}.source_${SWT_GTK_VER}.jar \
	    -d ${WRKDIST}/swt -x "org/*"
	cp ${WRKDIST}/launcher/bundles/org.eclipse.equinox.executable/library/gtk/make_{linux,openbsd}.mak
	cp -R ${WRKDIST}/libgnomeproxy/bundles/org.eclipse.core.net/natives/unix/{linux,openbsd}
	cp -R ${WRKDIST}/libunixfile/bundles/org.eclipse.core.filesystem/natives/unix/{linux,openbsd}
	cp ${WRKDIST}/swt/make_{linux,openbsd}.mak

do-build:
	${SETENV} ${MAKE_ENV} gmake -C ${WRKDIST}/launcher/bundles/org.eclipse.equinox.executable/library/gtk -f make_openbsd.mak
	${SETENV} ${MAKE_ENV} gmake -C ${WRKDIST}/libgnomeproxy/bundles/org.eclipse.core.net/natives/unix/openbsd
	${SETENV} ${MAKE_ENV} gmake -C ${WRKDIST}/libunixfile/bundles/org.eclipse.core.filesystem/natives/unix/openbsd
	${SETENV} ${MAKE_ENV} gmake -C ${WRKDIST}/swt -f make_openbsd.mak make_{swt,cairo,awt,atk,gnome,mozilla,xulrunner,xpcominit,webkit,glx}

post-build:
	mkdir -p ${WRKDIST}/libunixfile/bundles/org.eclipse.core.filesystem/natives/unix/openbsd/os/linux/${ECLIPSE_ARCH}
	cp ${WRKDIST}/libunixfile/bundles/org.eclipse.core.filesystem/natives/unix/openbsd/{,os/linux/${ECLIPSE_ARCH}}/libunixfile_1_0_0.so

do-install:
	rm -rf ${PREFIX}/eclipse4
	tar -zxf ${FULLDISTDIR}/${SDKDIST} -C ${PREFIX}
	mv ${PREFIX}/eclipse ${PREFIX}/eclipse4
	rm ${PREFIX}/eclipse4/libcairo-swt.so
	cp ${WRKDIST}/launcher/bundles/org.eclipse.equinox.executable/library/gtk/eclipse \
	    ${PREFIX}/eclipse4/eclipse
	cp ${WRKDIST}/launcher/bundles/org.eclipse.equinox.executable/library/gtk/eclipse_1506.so \
	    ${PREFIX}/eclipse4/plugins/org.eclipse.equinox.launcher.gtk.linux.${ECLIPSE_ARCH}_1.1.200.v20120913-144807/eclipse_1502.so
	${JAR} -uf ${PREFIX}/eclipse4/plugins/org.eclipse.core.net.linux.${ECLIPSE_ARCH}_${CORE_NET_VER}.jar \
	    -C ${WRKDIST}/libgnomeproxy/bundles/org.eclipse.core.net/natives/unix/openbsd libgnomeproxy-1.0.0.so
	${JAR} -uf ${PREFIX}/eclipse4/plugins/org.eclipse.core.filesystem.linux.${ECLIPSE_ARCH}_${CORE_FILESYSTEM_VER}.jar \
	    -C ${WRKDIST}/libunixfile/bundles/org.eclipse.core.filesystem/natives/unix/openbsd os/linux/${ECLIPSE_ARCH}/libunixfile_1_0_0.so
	zip -d ${PREFIX}/eclipse4/plugins/org.eclipse.swt.gtk.linux.${ECLIPSE_ARCH}_${SWT_GTK_VER}.jar libcairo-swt.so
	# XXX: jar -C fails for some reason, so use cd as a workaround
	cd ${WRKDIST}/swt && ${JAR} -uf ${PREFIX}/eclipse4/plugins/org.eclipse.swt.gtk.linux.${ECLIPSE_ARCH}_${SWT_GTK_VER}.jar \
	    libswt{,-{atk,awt,cairo,glx,gnome,mozilla,pi,webkit,xpcominit,xulrunner}}-gtk-${SWT_MINOR}.so

.include <bsd.port.mk>
