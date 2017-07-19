# $OpenBSD$

V =		0.5
COMMENT =	programming language consisting of emojis
DISTNAME =	emojicode-${V}
CATEGORIES =	lang

GH_ACCOUNT =	emojicode
GH_PROJECT =	emojicode
GH_TAGNAME =	v${V}

HOMEPAGE =	http://emojicode.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c c++ c++abi m pthread

# GCC 5.4+ or Clang 3.9+
# Furthermore, ports clang is no good because it is built against gcc-4.9
#COMPILER =	clang

MODULES =	devel/cmake

ESHAREDDIR =		${LOCALBASE}/share/emojicode
CONFIGURE_ARGS =	-DdefaultPackagesDirectory="${ESHAREDDIR}"

ORIGPDIR =	${WRKBUILD}/Emojicode-${V}.0-OpenBSD-${MACHINE_ARCH}/packages

# Needs allegro modules
NO_TEST =	Yes

# No real install routine (uses Python3)
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/emojicode{,c} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/emojicode
#	cd ${ORIGPDIR} && find * -type d -exec ${INSTALL_DATA_DIR} \
#		"${ESHAREDDIR}/{}" \;
#	cd ${ORIGPDIR} && find * -type f -exec ${INSTALL_DATA} \
#		"{}" "${PREFIX}/share/emojicode/{}" \;

.include <bsd.port.mk>
