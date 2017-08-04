# $OpenBSD: Makefile.template,v 1.54 2008/01/13 16:43:57 espie Exp $

COMMENT=	mail indexer (and not much of an email program)

DISTNAME=	notmuch-0.23.5

CATEGORIES=	mail databases

HOMEPAGE=	http://notmuchmail.org/

MASTER_SITES=	${HOMEPAGE}releases/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	c \
		glib-2.0 \
		gmime-2.6 \
		gobject-2.0 \
		pthread \
		talloc \
		z

SHARED_LIBS +=	notmuch 0.0 # 4.4

LIB_DEPENDS=	databases/xapian-core \
		devel/libtalloc \
		mail/gmime

BUILD_DEPENDS=	devel/doxygen \
		textproc/py-sphinx

# XXX emacs support needs 23.x (or maybe 22.x), no good with 21,
# can't compile in bulk build due to dependency conflicts.
# look at devel/id-utils for possible workaround.

USE_GMAKE=		Yes
MAKE_FLAGS=		V=1 \
			LIBNOTMUCH_VERSION_MAJOR=${LIBnotmuch_VERSION:R} \
			LIBNOTMUCH_VERSION_MINOR=${LIBnotmuch_VERSION:E}

NO_TEST=		Yes
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--mandir=${PREFIX}/man \
			--sysconfdir=${SYSCONFDIR} \
			--bashcompletiondir=${PREFIX}/share/notmuch/bash_completion.d

.include <bsd.port.mk>
