# $OpenBSD$

SHARED_ONLY=		Yes
ONLY_FOR_ARCHS=		amd64 i386

COMMENT=		multi-language software development environment

ECLIPSE_VER=		4.2
NATIVES_SNAPSHOT=	20120706170607

DISTNAME=		eclipse4-sdk
PKGNAME=		eclipse4-sdk-${ECLIPSE_VER}

SDKDIST-amd64=		eclipse-SDK-${ECLIPSE_VER}-linux-gtk-x86_64.tar.gz
SDKDIST-i386=		eclipse-SDK-${ECLIPSE_VER}-linux-gtk.tar.gz
SDKDIST=		${SDKDIST-${MACHINE_ARCH}}
NATIVESDIST=		eclipse-natives-${NATIVES_SNAPSHOT}.tar.gz
DISTFILES=		${SDKDIST} ${NATIVESDIST}:0
SUPDISTFILES=		${SDKDIST-amd64} ${SDKDIST-i386}
EXTRACT_ONLY=		${NATIVESDIST}
WRKDIST=		${WRKDIR}/natives

CATEGORIES=		devel/eclipse4

HOMEPAGE=		http://www.eclipse.org/

MAINTAINER=		Matthew Dempsky <matthew@openbsd.org>

# XXX(matthew): Blindly copied from Eclipse 3.x port
#
# Eclipse Public License Version 1.0 (http://www.eclipse.org/legal/epl-v10.html)
# Apache Software License 2.0 (http://www.apache.org/licenses/LICENSE-2.0)
# IBM Public License 1.0 (http://oss.software.ibm.com/developerworks/opensource/license10.html)
# Metro Link Public License 1.00 (http://www.opengroup.org/openmotif/supporters/metrolink/license.html)
# Mozilla Public License Version 1.1 (http://www.mozilla.org/MPL/MPL-1.1.html)
# LGPL 2.1 
PERMIT_PACKAGE_CDROM=	commercial distribution defend and indemnify clauses
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	commercial distribution defend and indemnify clauses
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITE_ECLIPSE+=	\
	http://www.eclipse.org/downloads/download.php?r=1&file=/eclipse/downloads/drops4/

MASTER_SITES=		${MASTER_SITE_ECLIPSE:=R-4.2-201206081400/}

# XXX(matthew): Hack...
MASTER_SITES0=		file://${FILESDIR}/

MODULES=		java
MODJAVA_VER=		1.7+

BUILD_DEPENDS=		devel/xulrunner/1.9,-devel devel/gmake archivers/zip archivers/unzip
RUN_DEPENDS=		${MODJAVA_RUN_DEPENDS}
RUN_DEPENDS+=		devel/xulrunner/1.9
LIB_DEPENDS=		x11/gnome/libgnomeui
LIB_DEPENDS+=		www/webkit

WANTLIB=	GL GLU ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xt \
		Xxf86vm art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation \
		bonoboui-2 c cairo canberra crypto dbus-1 dbus-glib-1 drm enchant \
		expat ffi fontconfig freetype gailutil gconf-2 gcrypt \
		gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-2 \
		gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0 \
		gpg-error gstapp-0.10 gstbase-0.10 gstinterfaces-0.10 \
		gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10 gthread-2.0 \
		gtk-x11-2.0 iconv icudata icui18n icuuc intl jpeg ltdl m ogg \
		orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		popt pthread pthread-stubs soup-2.4 sqlite3 ssl stdc++ util vorbis \
		vorbisfile webkitgtk-1.0 xcb xcb-render xcb-shm xml2 xslt z

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
			CFLAGS="${CFLAGS} -I/usr/X11R6/include" \
			MACHINE_ARCH="${MACHINE_ARCH}"

SUBST_VARS=		ECLIPSE_ARCH

NO_REGRESS=		Yes

JAR=			${JAVA_HOME}/bin/jar

SWT_GTK_VER=		3.100.0.v4233d

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

pre-patch:
	cp ${WRKDIST}/launcher/bundles/org.eclipse.equinox.executable/library/gtk/make_{linux,openbsd}.mak
	cp -R ${WRKDIST}/libgnomeproxy/bundles/org.eclipse.core.net/natives/unix/{linux,openbsd}
	cp -R ${WRKDIST}/libunixfile/bundles/org.eclipse.core.filesystem/natives/unix/{linux,openbsd}
	cp ${WRKDIST}/swt/make_{linux,openbsd}.mak

do-build:
	env -i ${MAKE_ENV} gmake -C ${WRKDIST}/launcher/bundles/org.eclipse.equinox.executable/library/gtk -f make_openbsd.mak
	env -i ${MAKE_ENV} gmake -C ${WRKDIST}/libgnomeproxy/bundles/org.eclipse.core.net/natives/unix/openbsd
	env -i ${MAKE_ENV} gmake -C ${WRKDIST}/libunixfile/bundles/org.eclipse.core.filesystem/natives/unix/openbsd
	env -i ${MAKE_ENV} gmake -C ${WRKDIST}/swt -f make_openbsd.mak make_{swt,cairo,awt,atk,gnome,mozilla,xulrunner,xpcominit,webkit,glx}

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
	cp ${WRKDIST}/launcher/bundles/org.eclipse.equinox.executable/library/gtk/eclipse_1503.so \
	    ${PREFIX}/eclipse4/plugins/org.eclipse.equinox.launcher.gtk.linux.${ECLIPSE_ARCH}_1.1.200.v20120522-1813/eclipse_1502.so
	${JAR} -uf ${PREFIX}/eclipse4/plugins/org.eclipse.core.net.linux.${ECLIPSE_ARCH}_${CORE_NET_VER}.jar \
	    -C ${WRKDIST}/libgnomeproxy/bundles/org.eclipse.core.net/natives/unix/openbsd libgnomeproxy-1.0.0.so
	${JAR} -uf ${PREFIX}/eclipse4/plugins/org.eclipse.core.filesystem.linux.${ECLIPSE_ARCH}_${CORE_FILESYSTEM_VER}.jar \
	    -C ${WRKDIST}/libunixfile/bundles/org.eclipse.core.filesystem/natives/unix/openbsd os/linux/${ECLIPSE_ARCH}/libunixfile_1_0_0.so
	zip -d ${PREFIX}/eclipse4/plugins/org.eclipse.swt.gtk.linux.${ECLIPSE_ARCH}_${SWT_GTK_VER}.jar libcairo-swt.so
	# XXX: jar -C fails for some reason, so use cd as a workaround
	cd ${WRKDIST}/swt && ${JAR} -uf ${PREFIX}/eclipse4/plugins/org.eclipse.swt.gtk.linux.${ECLIPSE_ARCH}_${SWT_GTK_VER}.jar \
	    libswt{,-{atk,awt,cairo,glx,gnome,mozilla,pi,webkit,xpcominit,xulrunner}}-gtk-4233.so

.include <bsd.port.mk>
