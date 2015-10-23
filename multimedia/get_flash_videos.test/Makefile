# $OpenBSD: Makefile,v 1.27 2015/10/16 21:00:46 sthen Exp $

COMMENT=	download flash video files from various sites

DISTNAME=	App-${GH_PROJECT}-${GH_TAGNAME}
PKGNAME=	${GH_PROJECT:S/-/_/g}-${GH_TAGNAME}
CATEGORIES=	multimedia

HOMEPAGE=	https://get-flash-videos.googlecode.com/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

GH_ACCOUNT=	monsieurvideo
GH_PROJECT=	get-flash-videos
GH_TAGNAME=	1.25.90
MASTER_SITES=	${MASTER_SITES_GITHUB}

BUILD_DEPENDS=	devel/p5-Tie-IxHash
# main program, and listed in MYMETA.json
RUN_DEPENDS=	www/p5-LWP-Protocol-https \
		www/p5-LWP-Protocol-socks \
		www/p5-libwww \
		security/p5-IO-Socket-SSL \
		devel/p5-Module-Find \
		www/p5-URI \
		www/p5-WWW-Mechanize
# modules
RUN_DEPENDS+=	devel/p5-Term-ReadKey \
		multimedia/p5-Data-AMF \
		multimedia/p5-Storable-AMF \
		rtmpdump-*|flvstreamer-*:net/rtmpdump \
		security/p5-Crypt-Blowfish_PP \
		security/p5-Crypt-Rijndael \
		security/p5-Digest-HMAC \
		textproc/p5-XML-Simple

pre-configure:
	cd ${WRKSRC}; sed -i \
	    's,/etc/get_flash_videosrc,${SYSCONFDIR}/get_flash_videosrc,g' \
	    doc/get_flash_videos.pod get_flash_videos

post-install:
	cd ${WRKINST}; find . -name '*.orig' -exec rm {} +

.include <bsd.port.mk>
