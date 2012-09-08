# $OpenBSD$

COMMENT=	Object for manipulating .torrent files

DISTNAME=	Net-BitTorrent-File-1.02-fix
PKGNAME=	p5-${DISTNAME:S/-fix//}p0
WRKDIST=	${WRKDIR}/${DISTNAME:S/-fix//}

CATEGORIES=	net

MAINTAINER=	Andrew Fresh <andrew@cpan.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	cpan

RUN_DEPENDS=	converters/p5-Convert-Bencode \
		security/p5-Digest-SHA1

.include <bsd.port.mk>
