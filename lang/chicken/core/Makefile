# $OpenBSD: Makefile,v 1.17 2011/03/09 06:23:35 ajacoutot Exp $

SHARED_ONLY=	Yes

SHARED_LIBS=	chicken	2.0

TEST_TARGET=	check
TEST_DEPENDS=	${BUILD_PKGPATH}

MAKE_FLAGS+=	CHICKEN=${LOCALBASE}/libexec/chicken-bootstrap \
		LIBchicken_VERSION="${LIBchicken_VERSION}"

BUILD_DEPENDS=	lang/chicken/bootstrap

post-patch:
	${SUBST_CMD} ${WRKSRC}/{csc,eval}.scm

.include <bsd.port.mk>
