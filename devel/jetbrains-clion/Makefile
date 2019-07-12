# $OpenBSD: $

COMMENT =		cross-platform IDE for C and C++.

V =			2019.1.4
DISTNAME =		CLion-${V}
PKGNAME =		jetbrains-clion-${V}
CATEGORIES =		devel

HOMEPAGE =		https://www.jetbrains.com/clion/

MAINTAINER  =		Rafael Sadowski <rsadowski@openbsd.org>

# Trial software, there are commercial and academic licenses available.
PERMIT_PACKAGE  =	Yes

MASTER_SITES =		https://download-cf.jetbrains.com/cpp/

MODULES =		java
MODJAVA_VER =		11

BUILD_DEPENDS =		${MODJAVA_RUN_DEPENDS}

RUN_DEPENDS =		devel/clang-tools-extra \
			devel/desktop-file-utils \
			devel/gdb \
			java/javaPathHelper

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/clion-2019.1.4
CL =			${PREFIX}/clion

# If NO_BUILD is set, JAVA_HOME doesn't get defined. So do a no-op for
# do-build.
do-build:
	@true

do-install:
	${INSTALL_DATA_DIR} ${CL}
	@tar -czf - -C ${WRKDIST} . | tar xzf - -C ${CL}
	@rm -rf ${CL}/{jre,jre64,Install-Linux-tar.txt}
	@rm -rf ${CL}/lib/pty4j-native
	@rm -rf ${CL}/bin/{fsnotifier,fsnotifier-arm,fsnotifier64,clang,cmake}
	@rm -rf ${CL}/bin/lib*.so
	@rm -rf ${CL}/bin/gdb/linux
	@rm -rf ${CL}/bin/lldb/linux
	@${SUBST_PROGRAM} ${FILESDIR}/clion ${PREFIX}/bin/clion
	@chmod ${BINMODE} ${PREFIX}/bin/clion
	${INSTALL_DATA_DIR} ${CL}/bin/clang/linux
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	cd ${WRKDIST}/lib && ${JAVA_HOME}/bin/jar xf icons.jar
	${INSTALL_DATA} ${WRKDIST}/bin/clion.png ${CL}/clion.png
	@${SUBST_DATA} ${FILESDIR}/clion.desktop \
		${PREFIX}/share/applications/clion.desktop
	${INSTALL_MAN} ${FILESDIR}/clion.1 ${PREFIX}/man/man1
	# Fix slow render
	echo "-Dsun.java2d.xrender=false" >> ${CL}/bin/clion.vmoptions
	echo "-Dsun.java2d.xrender=false" >> ${CL}/bin/clion64.vmoptions

.include <bsd.port.mk>
