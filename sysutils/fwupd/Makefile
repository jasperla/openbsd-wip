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

MODULES =		devel/meson

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		archivers/jcat \
			archivers/xz \
			databases/sqlite3 \
			devel/gettext,-runtime \
			devel/glib2

# found during configure, probably used at runtime
LIB_DEPENDS +=		net/curl \
			textproc/libxmlb

CONFIGURE_ARGS =	-Dbluez=disabled \
			-Dcbor=disabled \
			-Dconsolekit=disabled \
			-Ddbus_socket_address='' \
			-Delogind=disabled \
			-Dgnutls=disabled \
			-Dgudev=disabled \
			-Dgusb=disabled \
			-Dlaunchd=disabled \
			-Doffline=disabled \
			-Dpassim=disabled \
			-Dplugin_android_boot=disabled \
			-Dplugin_bcm57xx=disabled \
			-Dplugin_emmc=disabled \
			-Dplugin_fastboot=disabled \
			-Dplugin_flashrom=disabled \
			-Dplugin_gpio=disabled \
			-Dplugin_igsc=disabled \
			-Dplugin_kinetic_dp=disabled \
			-Dplugin_logitech_scribe=disabled \
			-Dplugin_logitech_tap=disabled \
			-Dplugin_mediatek_scaler=disabled \
			-Dplugin_modem_manager=disabled \
			-Dplugin_mtd=disabled \
			-Dplugin_nvme=disabled \
			-Dplugin_parade_lspcon=disabled \
			-Dplugin_pixart_rf=disabled \
			-Dplugin_powerd=disabled \
			-Dplugin_realtek_mst=disabled \
			-Dplugin_scsi=disabled \
			-Dplugin_synaptics_mst=disabled \
			-Dplugin_synaptics_rmi=disabled \
			-Dplugin_tpm=disabled \
			-Dplugin_uefi_capsule=disabled \
			-Dplugin_uefi_pk=disabled \
			-Dplugin_uf2=disabled \
			-Dplugin_upower=disabled \
			-Dpolkit=disabled \
			-Dsystemd=disabled \

PORTHOME =		${WRKDIR}

LDFLAGS =		-lc

.include <bsd.port.mk>
