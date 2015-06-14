# $OpenBSD: Makefile,v 1.25 2014/10/24 16:56:32 nigel Exp $

COMMENT=		download flash video files from various sites

GH_ACCOUNT =		njtaylor
GH_PROJECT =		get-flash-videos
GH_TAGNAME =		v1.24.20150614
DISTNAME=		${GH_PROJECT}-${GH_TAGNAME}
PKGNAME=		${GH_PROJECT:S/-/_/g}-${GH_TAGNAME:S/v//}
CATEGORIES=		multimedia

HOMEPAGE=		https://get-flash-videos.googlecode.com/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
# No CPAN version yet....
MASTER_SITES =		${MASTER_SITES_GITHUB}

BUILD_DEPENDS=		devel/p5-Tie-IxHash
RUN_DEPENDS=		devel/p5-Module-Find \
			devel/p5-Term-ReadKey \
			devel/p5-Tie-IxHash \
			multimedia/p5-Data-AMF \
			multimedia/p5-Storable-AMF \
			rtmpdump-*|flvstreamer-*:net/rtmpdump \
			security/p5-Crypt-Blowfish_PP \
			security/p5-Crypt-Rijndael \
			security/p5-Digest-HMAC \
			textproc/p5-XML-Simple \
			security/p5-IO-Socket-SSL \
			www/p5-libwww \
			www/p5-LWP-Protocol-https \
			www/p5-LWP-Protocol-socks \
			www/p5-URI \
			www/p5-WWW-Mechanize

pre-configure:
	cd ${WRKSRC}; perl -pi -e \
	    's,/etc/get_flash_videosrc,${SYSCONFDIR}/get_flash_videosrc,g' \
	    doc/get_flash_videos.pod get_flash_videos

post-install:
	cd ${WRKINST}; find . -name '*.orig' -exec rm {} +

.include <bsd.port.mk>
