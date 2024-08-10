# requires efi(4)
ONLY_FOR_ARCHS =	amd64 arm64

COMMENT =		system daemon to update firmware

V =			1.9.23
DISTNAME =		fwupd-${V}

SHARED_LIBS =		fwupd	0.0

CATEGORIES =		sysutils
HOMEPAGE =		https://fwupd.org

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

PERMIT_PACKAGE =	Yes

WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 intl jcat
WANTLIB += lzma sqlite3 z

SITES =			https://github.com/fwupd/fwupd/releases/download/${V}/
EXTRACT_SUFX =		.tar.xz

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODULES =		devel/meson \
			lang/python

MODPY_ADJ_FILES =	contrib/firmware_packager/simple_client.py

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/gobject-introspection

LIB_DEPENDS =		archivers/jcat \
			archivers/xz \
			databases/sqlite3 \
			devel/gettext,-runtime \
			devel/glib2

RUN_DEPENDS =		x11/gtk+4,-guic

# found during configure, probably used at runtime
LIB_DEPENDS +=		net/curl \
			textproc/libxmlb

DISABLED_OPTIONS = \
    bluez cbor consolekit docs elogind gnutls gudev gusb launchd offline \
    passim polkit systemd

DISABLED_PLUGINS = \
    android_boot bcm57xx emmc fastboot flashrom gpio igsc intel_me kinetic_dp \
    logitech_scribe logitech_tap mediatek_scaler modem_manager mtd nvme \
    parade_lspcon pixart_rf powerd realtek_mst redfish scsi synaptics_mst \
    synaptics_rmi tpm uefi_capsule uefi_pk uf2 upower

CONFIGURE_ARGS =	${DISABLED_OPTIONS:=-D%=disabled} \
			${DISABLED_PLUGINS:=-Dplugin_%=disabled} \
			-Ddbus_socket_address='' \
			-Defi_binary=false \
			-Defi_os_dir=OpenBSD \
			-Dmetainfo=false \
			-Dp2p_policy=none \
			-Dplugin_intel_spi=false \
			-Dpython=${MODPY_BIN} \
			-Dtests=false

# build uses $HOME
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
