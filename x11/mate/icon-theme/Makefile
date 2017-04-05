# $OpenBSD$

PKG_ARCH=	*

COMMENT=	base icon theme for MATE

MATE_PROJECT=	mate-icon-theme
MATE_VERSION=	1.18.1

CATEGORIES=	x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/mate

BUILD_DEPENDS=	x11/icon-naming-utils

# mate-icon-theme is the inherited theme for most icon themes so we
# make sure we have gtk-update-icon-cache and can display svg icons.
MODMATE_TOOLS +=	gtk-update-icon-cache
RUN_DEPENDS +=		x11/gnome/librsvg

# do not enforce build dependency on gtk-update-icon-cache
CONFIGURE_ENV +=	ac_cv_path_GTK_UPDATE_ICON_CACHE=/usr/bin/true

# installs empty share/locale/... directories
CONFIGURE_ARGS +=	--disable-nls

.include <bsd.port.mk>
