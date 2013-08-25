# $OpenBSD$
COMMENT=	tv

DISTNAME=	Miro-1.1

CATEGORIES=	multimedia

HOMEPAGE=	http://www.getmiro.com/
MASTER_SITES=	ftp://ftp.osuosl.org/pub/pculture.org/miro/src/

MAINTAINER=	Deanna Phillips <deanna@openbsd.org>

MODULES=	lang/python

WRKSRC=		${WRKDIST}/platform/gtk-x11

BUILD_DEPENDS=	::devel/xulrunner,-devel \
		::devel/libglade2 \
		::x11/py-gtk2 \
		::devel/boost \
		::devel/swig \
		:Pyrex-0.9.6.4:devel/pyrex \
		:xine-lib-1.1.9.1p0:multimedia/xine-lib

RUN_DEPENDS=	::devel/py-gobject \
		::x11/py-gtk2 \
		::math/py-Numeric \
		::graphics/py-cairo \
		::textproc/py-xml \
		::devel/libglade2 \
		::textproc/libxml \
		::devel/py-orbit \
		::x11/gnome/py-gnome \
		::databases/py-sqlite2 \
		::x11/gnome/py-gnome-extras \
                :python-bsddb-${MODPY_VERSION}*:lang/python/${MODPY_VERSION},-bsddb

# GPL v2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

pre-configure:	
		perl -pi -e s,%%PREFIX%%,${PREFIX},g ${WRKSRC}/run.sh
		perl -pi -e s,%%LOCALBASE%%,${LOCALBASE},g ${WRKSRC}/setup.py
		perl -pi -e s,%%X11BASE%%,${X11BASE},g ${WRKSRC}/setup.py

post-install:
		cd ${FILESDIR} && ${MAKE}
		${INSTALL_DATA_DIR} ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/miro
		cp ${FILESDIR}/_miro_openbsd.so ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/miro
		cp ${FILESDIR}/miro_openbsd.py ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/miro

.include <bsd.port.mk>
