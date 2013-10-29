# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT =		Tk client for the Jabber instant messaging system

DISTNAME =		tkabber-${VERSION}

RUN_DEPENDS =		${MODTK_RUN_DEPENDS} \
			devel/tcllib \
			security/tcltls \
			x11/bwidget

do-configure:
	@perl -pi -e 's,/usr/local,${PREFIX},' ${WRKSRC}/Makefile
	@perl -pi -e 's,wish,${MODTK_BIN},' ${WRKSRC}/Makefile \
		${WRKSRC}/tkabber.tcl ${WRKSRC}/examples/tools/tkabber_setstatus

post-install:
	@mv ${WRKINST}/${TRUEPREFIX}/share/doc/tkabber/examples \
		${WRKINST}/${TRUEPREFIX}/share/examples/tkabber

.include <bsd.port.mk>
