# $OpenBSD$

COMMENT =	open source communications platform written in C


DISTNAME =	freeswitch-1.0.6
CATEGORIES =	telephony

SHARED_LIBS =	freeswitch	0.0

HOMEPAGE =	http://www.freeswitch.org
MASTER_SITES=	http://files.freeswitch.org/

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# MPL
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/python
WANTLIB =	c crypto m ncurses pthread ssl stdc++

BUILD_DEPENDS =	lang/erlang
RUN_DEPENDS =	lang/erlang

USE_GMAKE =	Yes
#USE_LIBTOOL =	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV =		CPPFLAGS+="-I${LOCALBASE}/include" \
			LDFLAGS+="-L${LOCALBASE}/lib -L${MODPY_LIBDIR}"
CONFIGURE_ARGS =	--with-modinstdir=${LOCALBASE}/lib/freeswitch \
			--with-rundir=/var/run \
			--with-logfiledir=/var/log \
			--localstatedir=/var \
			--with-lib-subdir=NO \
			--with-erlang \
#			--with-python \
			--with-openssl=/usr

# The 'erl -version' test in configure needs HOME to be set.
CONFIGURE_ENV +=	HOME=${PORTHOME}

#NO_TEST=		Yes
#EXAMPLEDIR=		${PREFIX}/share/examples/asterisk
#EXAMPLEFILES=		extensions.ael extensions.conf logger.conf modules.conf musiconhold.conf sip.conf voicemail.conf

pre-configure:

post-patch:

-post-install:
	${INSTALL_DATA} ${WRKSRC}/{BUGS,CHANGES,COPYING,CREDITS} \
		${WRKSRC}/{ChangeLog,LICENSE,README*,UPGRADE*.txt} \
	${INSTALL_DATA} `find ${WRKSRC}/doc -type f` \
		${PREFIX}/share/doc/asterisk
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}/openbsd
	@chown -R ${SHAREOWN}:${SHAREGRP} ${EXAMPLEDIR}

.include <bsd.port.mk>
