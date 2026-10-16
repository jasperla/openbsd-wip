ONLY_FOR_ARCHS =	amd64
DPB_PROPERTIES =	parallel
USE_NOBTCFI =		Yes
USE_WXNEEDED =		Yes

COMMENT =		compatibility layer to run Windows applications

DISTNAME =		wine-11.19
CATEGORIES =		emulators

HOMEPAGE =		https://www.winehq.org/

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xext avcodec avformat avutil c c++abi gettextpo glib-2.0
WANTLIB += gobject-2.0 gphoto2 gphoto2_port gstaudio-1.0 gstbase-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 intl m pcsclite
WANTLIB += pthread pulse sane udev usb-1.0

# Libraries installed in subdirectories of ${LOCALBASE}.
WANTLIB += lib/inotify/inotify lib/libpcap/pcap

# Loaded with dlopen(); keep WANTLIB for runtime library version checks.
WANTLIB += SDL2 cups dbus-1 gnutls netapi vulkan xkbregistry

# XXX test only
# Keep these versions in sync with dlls/appwiz.cpl/addons.c
GECKO_VERSION =		2.47.4
MONO_VERSION =		11.3.0
DISTFILES.gecko =	wine-gecko-${GECKO_VERSION}-x86_64.msi
DISTFILES.mono =	wine-mono-${MONO_VERSION}-x86.msi
SITES.gecko =		https://dl.winehq.org/wine/wine-gecko/${GECKO_VERSION}/
SITES.mono =		https://dl.winehq.org/wine/wine-mono/${MONO_VERSION}/

SITES =			https://dl.winehq.org/wine/source/11.x/
EXTRACT_ONLY =		${DISTFILES}
EXTRACT_SUFX =		.tar.xz

MODULES =		lang/clang

# :patch makes the LLVM sources available under WRKDIR, without configuring
# or building LLVM. The module also depends on the installed LLVM package.
BUILD_DEPENDS =		devel/bison \
			devel/llvm/${MODCLANG_VERSION}:patch \
			devel/nasm
RUN_DEPENDS =		multimedia/gstreamer1/libav \
			multimedia/gstreamer1/plugins-bad \
			multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-ugly \
			x11/gtk+4,-guic

# wine-steam: extract Steam archives and provide free font replacements.
RUN_DEPENDS+=		archivers/unzip \
			fonts/liberation-fonts

LIB_DEPENDS =		audio/pulseaudio \
			devel/gettext,-tools \
			devel/libinotify \
			devel/libusb1 \
			devel/sdl2 \
			graphics/ffmpeg \
			graphics/libgphoto2 \
			graphics/sane-backends \
			graphics/vulkan-loader \
			multimedia/gstreamer1/core \
			multimedia/gstreamer1/plugins-base \
			net/libpcap \
			net/samba,-main \
			print/cups,-libs \
			security/gnutls \
			security/pcsc-lite \
			sysutils/libudev-openbsd \
			x11/dbus \
			x11/xkbcommon
TEST_DEPENDS =		${RUN_DEPENDS}

# Run suites serially, continue after failures and show per-test summaries.
TEST_FLAGS =		-j1 -k RUNTESTFLAGS="-P wine"

SEPARATE_BUILD =	Yes

USE_GMAKE =		Yes

# since we have the option, use autoconf rather than patching configure
# script directly
CONFIGURE_STYLE =	autoconf

# PE compilation is already selected by --enable-archs; x86_64_CC uses clang-pe.
CONFIGURE_ARGS =	--enable-archs=x86_64 --with-mingw
CONFIGURE_ARGS+=	--with-cups \
			--with-dbus \
			--with-ffmpeg \
			--with-fontconfig \
			--with-freetype \
			--with-gettext \
			--with-gettextpo \
			--with-gphoto \
			--with-gnutls \
			--with-gstreamer \
			--with-inotify \
			--with-netapi \
			--with-opengl \
			--with-pcap \
			--with-pcsclite \
			--with-pthread \
			--with-pulse \
			--with-sane \
			--with-sdl \
			--without-udev \
			--with-usb \
			--with-va \
			--with-vulkan \
			--with-xcomposite \
			--with-xcursor \
			--with-xfixes \
			--with-xinerama \
			--with-xinput \
			--with-xinput2 \
			--with-xrandr \
			--with-xrender \
			--with-xshape \
			--with-xshm \
			--with-xxf86vm \
			--with-x

# ALSA: Linux audio API; use PulseAudio instead.
# CAPI: Common ISDN API 2.0 needs a native libcapi20 implementation.
# CoreAudio: macOS audio frameworks.
# hwloc: Wine uses this for CPU/cache topology only on FreeBSD.
# OSS: Wine requires OSSv4; use PulseAudio instead.
# V4L2: libv4l2 is found, but linux/videodev2.h is missing.
CONFIGURE_ARGS+=	--without-alsa \
			--without-capi \
			--without-coreaudio \
			--without-hwloc \
			--without-oss \
			--without-v4l2

# GSSAPI: Kerberos SSP support needs adaptation to security/heimdal.
# krb5: Kerberos authentication also needs adaptation to security/heimdal.
# OpenCL: parallel computation on CPUs/GPUs, separate from OpenGL rendering.
CONFIGURE_ARGS+=	--without-gssapi \
			--without-krb5 \
			--without-opencl

# Wayland: use the X11 display driver.
CONFIGURE_ARGS+=	--without-wayland

CONFIGURE_ENV =		x86_64_CC="${WRKDIR}/bin/clang-pe" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# libinotify.pc supplies the headers but not the runtime library path.
# Wine requests libpcap.pc; the OpenBSD port instead provides libepcap.pc
# and installs its headers/libraries outside the default search paths.
CONFIGURE_ENV+=		INOTIFY_LIBS="-L${LOCALBASE}/lib/inotify \
			-Wl,-rpath,${LOCALBASE}/lib/inotify -linotify" \
			PCAP_CFLAGS="-I${LOCALBASE}/include/libpcap" \
			PCAP_LIBS="-L${LOCALBASE}/lib/libpcap \
			-Wl,-rpath,${LOCALBASE}/lib/libpcap -lpcap"

AUTOCONF_VERSION =	2.73
AUTOMAKE_VERSION =	1.18

# Setup tests as _pbuild.
# { printf 'add :1 . '; openssl rand -hex 16; } | xauth -f /tmp/wine-Xauthority
# Xvfb :1 -screen 0 1280x1024x24 -noreset -auth /tmp/wine-Xauthority &
# Then as usual.
# DISPLAY=:1 XAUTHORITY=/tmp/wine-Xauthority make test
TEST_IS_INTERACTIVE =	x11
PORTHOME =		${WRKDIR}

# Keep the installed generated headers, and restore the upstream headers
# removed by the LLVM port because they overlap with OpenBSD's libc headers.
# Windows targets need the Clang versions, not the host's libc headers.
CLANG_PE_RESOURCE =	${WRKDIR}/clang-pe
LLVM_PREFIX =		${LOCALBASE}/llvm${MODCLANG_VERSION}
CLANG_RESOURCE =	${LLVM_PREFIX}/lib/clang/${MODCLANG_VERSION}
LLVM_SOURCE =		${WRKDIR}/devel/llvm/${MODCLANG_VERSION}/llvm-project-*
SUBST_VARS+=		CLANG_PE_RESOURCE MODCLANG_VERSION

pre-configure:
	${INSTALL_DATA_DIR} ${CLANG_PE_RESOURCE}/include
	cp -R ${CLANG_RESOURCE}/include/. ${CLANG_PE_RESOURCE}/include/
	cp ${LLVM_SOURCE}/clang/lib/Headers/*.h ${CLANG_PE_RESOURCE}/include/
	ln -sfh ${CLANG_RESOURCE}/lib ${CLANG_PE_RESOURCE}/lib
	${SUBST_PROGRAM} ${FILESDIR}/clang-pe ${WRKDIR}/bin/clang-pe

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/wine-steam ${PREFIX}/bin/wine-steam
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps
	${INSTALL_DATA} ${WRKSRC}/programs/winecfg/logo.svg \
		${PREFIX}/share/icons/hicolor/scalable/apps/wine.svg

pre-test:
	# Add RandR modes for resolution-switching tests
	${SETENV} ${ALL_TEST_ENV} xrandr --query >/dev/null
.for mode timings in \
    800x600 "40 800 840 968 1056 600 601 605 628 +hsync +vsync" \
    1024x768 "65 1024 1048 1184 1344 768 771 777 806 -hsync -vsync"
	${SETENV} ${ALL_TEST_ENV} xrandr --query | \
	    grep -q '^[[:space:]]*${mode}[[:space:]]' || { \
		${SETENV} ${ALL_TEST_ENV} xrandr \
		    --newmode ${mode} ${timings:S/"//g} && \
		${SETENV} ${ALL_TEST_ENV} xrandr \
		    --addmode screen ${mode}; \
	}
.endfor
	# Initialize the Wine prefix without Mono or Gecko
	${INSTALL_DATA_DIR} ${PORTHOME}
	cd ${WRKBUILD} && \
	${SETENV} ${ALL_TEST_ENV} WINEDLLOVERRIDES="mscoree,mshtml=d" \
		./wine wineboot.exe -i && \
	${SETENV} ${ALL_TEST_ENV} ./server/wineserver -w
	# Install Gecko and Mono from the local MSI files
.for addon in gecko mono
	cd ${WRKBUILD} && \
	${SETENV} ${ALL_TEST_ENV} ./wine msiexec /i \
		"Z:${FULLDISTDIR}/${DISTFILES.${addon}}" /qn \
		REBOOT=ReallySuppress /l*v "Z:${WRKDIR}/${addon}-install.log"
.endfor
	# Wait for Wine processes to exit before running tests
	cd ${WRKBUILD} && \
	${SETENV} ${ALL_TEST_ENV} ./server/wineserver -w

do-test:
	ulimit -Sn "$$(ulimit -Hn)" && \
	cd ${WRKBUILD} && \
	${SETENV} ${ALL_TEST_ENV} ${MAKE_PROGRAM} ${ALL_TEST_FLAGS} \
		-f ${MAKE_FILE} ${TEST_TARGET}

.include <bsd.port.mk>
