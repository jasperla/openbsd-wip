# $OpenBSD$

COMMENT=		Perl interface for the MusicBrainz libdiscid library
DISTNAME=		MusicBrainz-DiscID-0.04
CATEGORIES=		audio

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
CPAN_AUTHOR=		NJH
MODCPAN_EXAMPLES=	Yes

WANTLIB =		c discid perl

RUN_DEPENDS =		audio/libdiscid
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
