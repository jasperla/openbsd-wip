# $OpenBSD$

COMMENT=		syntax highlighting

DISTNAME=		coderay-1.0.9
CATEGORIES=		textproc

HOMEPAGE=		http://coderay.rubychan.de/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

# XXX regression tests are broken: missing lib/assert_warning
NO_REGRESS =		Yes
REGRESS_DEPENDS=	${BUILD_PKGPATH}
MODRUBY_REGRESS=	rake

.include <bsd.port.mk>
