# $OpenBSD$

COMMENT-main=	graphical network protocol analyzer
COMMENT-text=	network protocol analyzer

WVER=		1.6.7
DISTNAME=	wireshark-${WVER}
PKGNAME-main=	wireshark-${WVER}
PKGNAME-text=	tshark-${WVER}
SHARED_ONLY=	Yes

SHARED_LIBS +=  wsutil               0.0      # 1.0
SHARED_LIBS +=  wiretap              0.0      # 1.0
SHARED_LIBS +=  wireshark            0.0      # 1.0

CATEGORIES=	net security x11

HOMEPAGE=	http://www.wireshark.org/

EXTRACT_SUFX=	.tar.bz2

FLAVORS=	gtk3 no_python
FLAVOR?=

USE_GMAKE=	Yes
USE_GROFF=	Yes

# Mostly GPLv2 or later. Some files are less restrictive.
# tools/pidl is GPLv3 or later. See COPYING.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c glib-2.0 m pcap pthread z

WANTLIB-text += ${WANTLIB} GeoIP cares gcrypt gmodule-2.0 gnutls
WANTLIB-text += gpg-error krb5 lua smi

WANTLIB-main += ${WANTLIB} wireshark wiretap wsutil
WANTLIB-main += gdk-x11-2.0 gdk_pixbuf-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB-main += gthread-2.0 pango-1.0 portaudio

MULTI_PACKAGES= -text -main

MASTER_SITES=	http://www.wireshark.org/download/src/all-versions/

SUBST_VARS=	WVER

LIB_DEPENDS=

LIB_DEPENDS-text= ${LIB_DEPENDS} \
		devel/glib2 \
		lang/lua \
		net/libcares \
		net/libsmi \
		net/GeoIP  \
		security/libgcrypt \
		security/gnutls

LIB_DEPENDS-main= ${LIB_DEPENDS} \
		tshark-${WVER}:${PKGPATH},${FLAVOR},-text \
		audio/portaudio-svn \
		x11/gtk+2 \

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+= --tag=disable-static

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-dumpcap-group=_wireshark \
		--enable-threads \
		--with-ssl

.if !${FLAVOR:L:Mno_python}
MODULES =		lang/python
WANTLIB-text +=		${MODPY_WANTLIB}
LIB_DEPENDS-text +=	${MODPY_LIB_DEPENDS}
CONFIGURE_ARGS +=	--with-python
.endif

.if ${FLAVOR:L:Mgtk3}
BROKEN =	Yes
CONFIGURE_ARGS +=	--with-gtk3=yes
WANTLIB-main +=		gtk-3
LIB_DEPENDS-main +=		x11/gtk+3
.endif

NO_REGRESS=	Yes

post-extract:
	${INSTALL} -m 555 ${FILESDIR}/krb5-config ${WRKDIR}/bin
.if !${FLAVOR:L:Mno_python}
	ln -s /usr/local/bin/python${MODPY_VERSION}-config ${WRKDIR}/bin/python-config
.endif

post-install:
	@find ${PREFIX}/lib/wireshark -name '*.la' -print0 | xargs -r0 rm

.include <bsd.port.mk>
