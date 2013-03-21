# $OpenBSD$

COMMENT=		syntax highlighting

DISTNAME=		coderay-1.0.9
CATEGORIES=		textproc

HOMEPAGE=		http://coderay.rubychan.de/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

# XXX regression tests are broken: missing lib/assert_warning
NO_TEST =		Yes
TEST_DEPENDS=	${BUILD_PKGPATH}
MODRUBY_TEST=	rake

.include <bsd.port.mk>
