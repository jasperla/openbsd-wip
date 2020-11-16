# $OpenBSD$

# rt/cgen/cowgol.h:14:
# "Sorry, cowgol cgen doesn't work on big endian machines yet."
#
# But also, nasm is amd64/i386 only
ONLY_FOR_ARCHS =	amd64 i386

COMMENT =	self-hosted Ada-inspired language for small systems
DISTNAME =	${GH_PROJECT}-0.6.1pl20201111
CATEGORIES =	lang

# No recent releases... or relases with proper tarballs...
GH_ACCOUNT =	davidgiven
GH_PROJECT =	cowgol
GH_COMMIT =	7c7457463830809a8f9b3e0756954b593b282ad1

HOMEPAGE =	https://cowlark.com/cowgol/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Cowgol itself: BSD
# third-party emulators:
#   a mix of MIT, BSD, GPLv2 only, and GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c m readline z80ex z80ex_dasm

MODULES =	lang/lua

BUILD_DEPENDS =	devel/64tass \
		devel/nasm \
		devel/ninja \
		devel/zmac \
		sysutils/coreutils \
		sysutils/gpp

LIB_DEPENDS =	devel/z80ex

RUN_DEPENDS =	devel/64tass \
		devel/nasm \
		devel/zmac

# -Wno-parentheses kills a slew of warnings that made porting difficult.
USE_GMAKE =	Yes
MAKE_FLAGS =	CFLAGS="${CFLAGS} -I${LOCALBASE}/include -Wno-parentheses" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
		MODLUA_BIN="${MODLUA_BIN}"

# Tests are run at the end of the build.
# Too much to decouple...
NO_TEST =	Yes

# No installation routine.
# NAMING CONVENTION:
#   utility-target.hostplatform.hostcpu
#   For example, cowfe-cgen.ncpmz.z80.com means:
#     Frontend, target = C backend, host platform = CP/M, host CPU = Z80.
#     .nncgen.exe = stage 3 C backend created native compiler.
#   We don't want .bootstrap.exe (stage 1) or .ncgen.exe (stage 2).
# Install the native executables to ${LOCALBASE}/bin.
# Install the native compiler wrapper script (cowgolc).
# Install the executables for other platforms to ${LOCALBASE}/share/cowgol/bin.
# Install the headers to ${LOCALBASE}/share/cowgol/rt.
# Install the standard library (cowgol.coo) to ${LOCALBASE}/share/cowgol/rt.
# Install the platform emulators.
# Install the example programs.
do-install:
	for i in ${WRKSRC}/bin/*.nncgen.exe ; do \
		${INSTALL_PROGRAM} $$i ${PREFIX}/bin/`basename $$i` ; \
	done ;
	${SUBST_CMD} -c -m 555 ${FILESDIR}/cowgolc.sh ${PREFIX}/bin/cowgolc
	${INSTALL_DATA_DIR} ${PREFIX}/share/cowgol/bin
	${INSTALL_DATA} ${WRKSRC}/bin/*.bbct{,6502,i,iny}.* \
		${PREFIX}/share/cowgol/bin
	${INSTALL_DATA} ${WRKSRC}/bin/*.ncpm{,z}.* ${PREFIX}/share/cowgol/bin
	${INSTALL_DATA} ${WRKSRC}/bin/*.fuzix6303.* ${PREFIX}/share/cowgol/bin
	${INSTALL_DATA} ${WRKSRC}/bin/*.msdos.* ${PREFIX}/share/cowgol/bin
	${INSTALL_DATA} ${WRKSRC}/bin/*.unixv7.* ${PREFIX}/share/cowgol/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/cowgol/rt
	cp ${WRKSRC}/rt/*.coh ${PREFIX}/share/cowgol/rt
	cp -R ${WRKSRC}/rt/agc ${PREFIX}/share/cowgol/rt
	cp -R ${WRKSRC}/rt/bbct ${PREFIX}/share/cowgol/rt
	cp -R ${WRKSRC}/rt/bbcti ${PREFIX}/share/cowgol/rt
	cp -R ${WRKSRC}/rt/cgen ${PREFIX}/share/cowgol/rt
	cp -R ${WRKSRC}/rt/cpm ${PREFIX}/share/cowgol/rt
	cp -R ${WRKSRC}/rt/cpmz ${PREFIX}/share/cowgol/rt
	cp -R ${WRKSRC}/rt/fuzix6303 ${PREFIX}/share/cowgol/rt
	cp -R ${WRKSRC}/rt/lx386 ${PREFIX}/share/cowgol/rt
	cp -R ${WRKSRC}/rt/lxthumb2 ${PREFIX}/share/cowgol/rt
	cp -R ${WRKSRC}/rt/msdos ${PREFIX}/share/cowgol/rt
	cp -R ${WRKSRC}/rt/unixv7 ${PREFIX}/share/cowgol/rt
	rm -f ${PREFIX}/share/cowgol/rt/bbct/build.lua
	rm -f ${PREFIX}/share/cowgol/rt/bbcti/build.lua
	rm -f ${PREFIX}/share/cowgol/rt/cgen/build.lua
	rm -f ${PREFIX}/share/cowgol/rt/cpm/build.lua
	rm -f ${PREFIX}/share/cowgol/rt/cpmz/build.lua
	rm -f ${PREFIX}/share/cowgol/rt/fuzix6303/build.lua
	rm -f ${PREFIX}/share/cowgol/rt/lx386/build.lua
	rm -f ${PREFIX}/share/cowgol/rt/lxthumb2/build.lua
	rm -f ${PREFIX}/share/cowgol/rt/msdos/build.lua
	rm -f ${PREFIX}/share/cowgol/rt/unixv7/build.lua
	${INSTALL_DATA} ${WRKSRC}/.obj/rt/bbct/cowgol.coo \
		${PREFIX}/share/cowgol/rt/bbct
	${INSTALL_DATA} ${WRKSRC}/.obj/rt/bbcti/cowgol.coo \
		${PREFIX}/share/cowgol/rt/bbcti
	${INSTALL_DATA} ${WRKSRC}/.obj/rt/cgen/cowgol.coo \
		${PREFIX}/share/cowgol/rt/cgen
	${INSTALL_DATA} ${WRKSRC}/.obj/rt/cpm/cowgol.coo \
		${PREFIX}/share/cowgol/rt/cpm
	${INSTALL_DATA} ${WRKSRC}/.obj/rt/cpmz/cowgol.coo \
		${PREFIX}/share/cowgol/rt/cpmz
	${INSTALL_DATA} ${WRKSRC}/.obj/rt/fuzix6303/cowgol.coo \
		${PREFIX}/share/cowgol/rt/fuzix6303
	${INSTALL_DATA} ${WRKSRC}/.obj/rt/lx386/cowgol.coo \
		${PREFIX}/share/cowgol/rt/lx386
	${INSTALL_DATA} ${WRKSRC}/.obj/rt/lxthumb2/cowgol.coo \
		${PREFIX}/share/cowgol/rt/lxthumb2
	${INSTALL_DATA} ${WRKSRC}/.obj/rt/msdos/cowgol.coo \
		${PREFIX}/share/cowgol/rt/msdos
	${INSTALL_DATA} ${WRKSRC}/.obj/rt/unixv7/cowgol.coo \
		${PREFIX}/share/cowgol/rt/unixv7
	${INSTALL_PROGRAM} ${WRKSRC}/bin/{cpm,fuzix6303,tube}emu \
		${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bin/apout ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bin/emu2 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cowgol
	${INSTALL_DATA} ${WRKSRC}/examples/*.cow \
		${PREFIX}/share/examples/cowgol

.include <bsd.port.mk>
