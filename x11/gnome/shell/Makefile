# $OpenBSD$

COMMENT=		next generation GNOME shell

GNOME_PROJECT=		gnome-shell
GNOME_VERSION=		3.1.92

HOMEPAGE=		http://live.gnome.org/GnomeShell

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gconf2 \
			devel/gettext \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		goi

MODGCONF2_SCHEMAS_DIR=	gnome-shell

LIBTOOL_FLAGS+= 	--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-ca-certificates=${SYSCONFDIR}/ssl/cert.pem
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
