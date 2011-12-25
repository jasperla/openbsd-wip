COMMENT=		an open source communications platform written in C

SHARED_ONLY=   	Yes 
VER=			1.0.6
DISTNAME=		freeswitch-${VER}
PKGNAME=		freeswitch-${VER}

CATEGORIES=		telephony

HOMEPAGE=		http://www.freeswitch.org

MAINTAINER=		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB+=	c crypto m ncurses pthread ssl 

MASTER_SITES=	http://files.freeswitch.org/

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
SHARED_LIBS +=  freeswitch                1.0

#CPPFLAGS+=		-I${X11BASE}/include -I${LOCALBASE}/include
#LDFLAGS+= 		-L${X11BASE}/lib -L${LOCALBASE}/lib
CONFIGURE_ENV+=		CPPFLAGS="${CPPFLAGS}" \
			CFLAGS="${CFLAGS}" \
			LDFLAGS="${LDFLAGS}"

CONFIGURE_ARGS+=	--localstatedir=/var 

NO_REGRESS=		Yes
INSTALL_TARGET=	install
#EXAMPLEDIR=		${PREFIX}/share/examples/asterisk
#EXAMPLEFILES=		extensions.ael extensions.conf logger.conf modules.conf musiconhold.conf sip.conf voicemail.conf

pre-configure:

post-patch:

post-install:
	#${INSTALL_DATA} ${WRKSRC}/{BUGS,CHANGES,COPYING,CREDITS} \
		#${WRKSRC}/{ChangeLog,LICENSE,README*,UPGRADE*.txt} \
	#${INSTALL_DATA} `find ${WRKSRC}/doc -type f` \
		#${PREFIX}/share/doc/asterisk
	#${INSTALL_DATA_DIR} ${EXAMPLEDIR}/openbsd
	#@chown -R ${SHAREOWN}:${SHAREGRP} ${EXAMPLEDIR}

.include <bsd.port.mk>
