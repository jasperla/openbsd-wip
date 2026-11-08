ONLY_FOR_ARCHS =	amd64
DPB_PROPERTIES =	parallel
USE_NOBTCFI =		Yes
USE_WXNEEDED =		Yes

COMMENT =		compatibility layer to run Windows applications

DISTNAME =		wine-11.20
REVISION =		999

CATEGORIES =		emulators

HOMEPAGE =		https://www.winehq.org/

MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>, \
			Andrii Yukhymchak <NethIafin-obsd@proton.me>

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xext avcodec avformat avutil c c++abi gettextpo glib-2.0
WANTLIB += gobject-2.0 gphoto2 gphoto2_port gstaudio-1.0 gstbase-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 intl m pcsclite
WANTLIB += pthread pulse sane

WANTLIB += lib/inotify/inotify lib/libpcap/pcap

# loaded with dlopen()
WANTLIB += SDL2 cups dbus-1 gnutls netapi vulkan xkbregistry

# XXX test only
# XXX note full test require net access, maybe let wine download those ?
# Keep these versions in sync with dlls/appwiz.cpl/addons.c
# MPLv2.0 and third-party licenses, HTML engine for Wine.
GECKO_VERSION =		2.47.4
# MIT and other licenses, .NET Framework replacement for Wine.
MONO_VERSION =		11.3.0

DISTFILES.gecko =	wine-gecko-${GECKO_VERSION}-x86_64.msi
DISTFILES.mono =	wine-mono-${MONO_VERSION}-x86.msi
SITES.gecko =		https://dl.winehq.org/wine/wine-gecko/${GECKO_VERSION}/
SITES.mono =		https://dl.winehq.org/wine/wine-mono/${MONO_VERSION}/

SITES =			https://dl.winehq.org/wine/source/11.x/
EXTRACT_ONLY =		${DISTFILES}
EXTRACT_SUFX =		.tar.xz

MODULES =		lang/clang

BUILD_DEPENDS =		devel/bison \
			devel/nasm \
			${_MODCLANG_BUILD_DEPENDS},headerextract:patch
RUN_DEPENDS =		audio/generaluser-gs-soundfont \
			multimedia/gstreamer1/libav \
			multimedia/gstreamer1/plugins-bad \
			multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-ugly \
			x11/gtk+4,-guic

LIB_DEPENDS =		audio/pulseaudio \
			devel/gettext,-tools \
			devel/libinotify \
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
			x11/dbus \
			x11/xkbcommon
TEST_DEPENDS =		${RUN_DEPENDS} \
			fonts/liberation-fonts \
			fonts/noto/cjk \
			fonts/noto/emoji \
			fonts/noto/fonts

# run WineTest with a 15-minute timeout per suite
TEST_SUITES ?=
TEST_FLAGS =		-c -q -o - -w 900 -t openbsd-${ARCH} -m ""
TEST_FLAGS+=		-J winetest.xml

SEPARATE_BUILD =	Yes

USE_GMAKE =		Yes

# regenerate configure from the patched configure.ac
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

CONFIGURE_ARGS+=	--without-alsa \
			--without-capi \
			--without-coreaudio \
			--without-hwloc \
			--without-opencl \
			--without-oss \
			--without-udev

# GSSAPI: Kerberos SSP support needs adaptation to security/heimdal.
# krb5: Kerberos authentication also needs adaptation to security/heimdal.
# USB: devel/libusb1 lacks hotplug support. wineusb aborts initialization.
# V4L2: libv4l2 is found, but linux/videodev2.h is missing.
# Wayland: untested
CONFIGURE_ARGS+=	--without-gssapi \
			--without-krb5 \
			--without-usb \
			--without-v4l2 \
			--without-wayland

CONFIGURE_ENV =		x86_64_CC="${WRKDIR}/bin/clang-pe" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# Wine requests libpcap.pc; the OpenBSD port instead provides libepcap.pc
# and installs its headers/libraries outside the default search paths.
CONFIGURE_ENV+=		INOTIFY_LIBS="-L${LOCALBASE}/lib/inotify \
			-Wl,-rpath,${LOCALBASE}/lib/inotify -linotify" \
			PCAP_CFLAGS="-I${LOCALBASE}/include/libpcap" \
			PCAP_LIBS="-L${LOCALBASE}/lib/libpcap \
			-Wl,-rpath,${LOCALBASE}/lib/libpcap -lpcap"

# prevent linux/input.h detection: evdev keycodes don't match OpenBSD XFree86.
CONFIGURE_ENV+=		ac_cv_header_linux_input_h=no

# OpenBSD's __st_birthtime is always zero; use Wine's mtime fallback.
CONFIGURE_ENV+=		ac_cv_member_struct_stat___st_birthtime=no \
			ac_cv_member_struct_stat___st_birthtim=no

# after make update-plist:
# sed -ie 's,^lib/wine/.*\.exe$,@bin &,; s,^lib/wine/.*\.dll$,@so &,' pkg/PLIST
DEBUG_PACKAGES =	${BUILD_PACKAGES}
# dwz cannot process PE files
DWZ = :

AUTOCONF_VERSION =	2.73
AUTOMAKE_VERSION =	1.18

# Keep the installed generated headers, and restore the upstream headers
# (removed by LLVM port because they overlap with OpenBSD's libc headers).
# Windows targets need the Clang versions, not the host's libc headers.
CLANG_PE_RESOURCE =	${WRKDIR}/clang-pe
LLVM_PREFIX =		${LOCALBASE}/llvm${MODCLANG_VERSION}
CLANG_RESOURCE =	${LLVM_PREFIX}/lib/clang/${MODCLANG_VERSION}
SUBST_VARS+=		CLANG_PE_RESOURCE MODCLANG_VERSION

# match the upstream CI environment in tools/gitlab/test.yml
TEST_ENV+=		LP_NUM_THREADS=4 \
			WINEDEBUG=err-all,fixme-all \
			LC_ALL=C.UTF-8

# implicit parent-domain searches whose slow SERVFAIL replies can exceed
# winhttp's DNS resolution timeout
TEST_ENV+=		LOCALDOMAIN=.

# keep the audio socket under PORTHOME; libpulse discovers it automatically.
TEST_ENV+=		XDG_RUNTIME_DIR=${PORTHOME}/.run

# Tests needs a few configuration before running.

# doas _pbuild
# * start Xvfb, native 0hz mode is distinct from the test modes.
#   pre-test selects the 2048x1080@60 desktop mode.
# * start PipeWire (assuming there is nothing using sndio on the system)
#
# { printf 'add :1 . '; openssl rand -hex 16; } | xauth -f /tmp/wine-Xauthority
# Xvfb :1 -screen 0 2048x1152x24 -noreset -auth /tmp/wine-Xauthority &
# wine=$(cd /usr/ports/emulators/wine ; make show=PORTHOME)
# install -d -m 700 "$wine/.run"
# env HOME="$wine" XDG_RUNTIME_DIR="$wine/.run" pipewire &
# env HOME="$wine" XDG_RUNTIME_DIR="$wine/.run" pactl info

# doas root
# * need internet, make sure pf allow such usage (comment _pbuild rules)
# * (XXX) need multicast, more test todo
# * enable global ptrace for debuging tests
#
# pfctl -f /etc/pf.conf
# route -n delete -inet 224.0.0.0/4
# sysctl kern.global_ptrace=1

# Run test as your user, pass DISPLAY & XAUTHORITY to ports infrastructure.
# DISPLAY=:1 XAUTHORITY=/tmp/wine-Xauthority make test

TEST_IS_INTERACTIVE =	x11
PORTHOME =		${WRKDIR}

# first mode is the desktop; allow large windows tests
WINE_TEST_MODES =	2048x1080@60 \
			640x480@60 800x600@60 800x600@75 \
			940x560@60 1024x768@60 1280x1024@60 1600x900@60

pre-configure:
	${INSTALL_DATA_DIR} ${CLANG_PE_RESOURCE}/include
	cp ${WRKDIR}/devel/llvm/*/*/clang/lib/Headers/*.h \
		${CLANG_PE_RESOURCE}/include/
	cp -R ${CLANG_RESOURCE}/include/. ${CLANG_PE_RESOURCE}/include/
	ln -sfh ${CLANG_RESOURCE}/lib ${CLANG_PE_RESOURCE}/lib
	${SUBST_PROGRAM} ${FILESDIR}/clang-pe ${WRKDIR}/bin/clang-pe

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps
	${INSTALL_DATA} ${WRKSRC}/programs/winecfg/logo.svg \
		${PREFIX}/share/icons/hicolor/scalable/apps/wine.svg

pre-test:
# XXX flush .wine, tmp workaround to ease some retest-ing
# XXX winetest already take care of flushing ?
#	# Remove leftovers from previous test runs.
#	rm -rf ${PORTHOME}/.wine/drive_c/users/${BUILD_USER}/AppData/Local/Temp
#	${INSTALL_DATA_DIR} \
#	    ${PORTHOME}/.wine/drive_c/users/${BUILD_USER}/AppData/Local/Temp
	# Configure virtual Xvfb modes from WIDTHxHEIGHT@HZ specifications.
	${SETENV} ${ALL_TEST_ENV} ${SHELL} ${FILESDIR}/setup-test-display \
	    screen ${WINE_TEST_MODES}
	# Cache the Mono and Gecko installers before initializing Wine
	${INSTALL_DATA_DIR} ${PORTHOME}/.cache/wine
.for addon in gecko mono
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES.${addon}} \
		${PORTHOME}/.cache/wine/
.endfor
	# Initialize the prefix, register MSHTML and install Mono
	cd ${WRKBUILD} && ${SETENV} ${ALL_TEST_ENV} ./wine wineboot.exe -i
	# Load MSHTML to install Gecko before running the tests
	cd ${WRKBUILD} && ${SETENV} ${ALL_TEST_ENV} \
		./wine regsvr32 /s /n /i mshtml.dll
	# Wait for Wine processes to exit before running tests
	cd ${WRKBUILD} && ${SETENV} ${ALL_TEST_ENV} ./server/wineserver -w

do-test:
	ulimit -Sn "$$(ulimit -Hn)" && \
	cd ${WRKBUILD} && \
	${SETENV} ${ALL_TEST_ENV} ./wine \
		programs/winetest/x86_64-windows/winetest.exe ${TEST_FLAGS} ${TEST_SUITES}

.include <bsd.port.mk>
