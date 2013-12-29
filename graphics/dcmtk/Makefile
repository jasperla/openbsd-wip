# $OpenBSD: Makefile,v 1.9 2011/09/16 10:02:36 espie Exp $

COMMENT=		DICOM toolkit

DISTNAME=		dcmtk-3.6.0

CATEGORIES=		graphics

HOMEPAGE=		http://www.dcmtk.org/dcmtk.php.en

# Add libraries here manually, after checking PLIST for .a changes
SHARED_LIBS +=	dcmtls 		0.0
SHARED_LIBS +=	dcmdata		0.0
SHARED_LIBS +=	dcmpstat	0.0
SHARED_LIBS +=	dcmsign		0.0
SHARED_LIBS +=	dcmwlm		0.0
SHARED_LIBS +=	dcmimage	0.0
SHARED_LIBS +=	dcmnet		0.0
SHARED_LIBS +=	dcmimgle	0.0
SHARED_LIBS +=	dcmqrdb		0.0
SHARED_LIBS +=	ofstd		0.0
SHARED_LIBS +=	dcmsr		0.0
SHARED_LIBS +=	dcmjpeg 	0.0


MASTER_SITES=		ftp://dicom.offis.de/pub/dicom/offis/software/dcmtk/dcmtk360/

# Several ISC and BSDish
# ftp://dicom.offis.de/pub/dicom/offis/software/dcmtk/dcmtk360/COPYRIGHT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto m ssl stdc++ wrap z jpeg>=62 png>=4 \
			tiff>=36 xml2>=9

LIB_DEPENDS=		graphics/jpeg \
			graphics/png \
			graphics/tiff \
			textproc/libxml

RUN_DEPENDS=		graphics/netpbm

MODULES=		lang/tcl

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-threads \
			--with-zlib --with-zlibinc=${LOCALBASE} \
			--with-libtiff --with-libtiffinc=${LOCALBASE} \
			--with-libpng --with-libpnginc=${LOCALBASE} \
			--with-libxml --with-libxmlinc=${LOCALBASE}

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_prog_LIBTOOL=:

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config
#FAKE_TARGET=		install install-include install-lib
FAKE_FLAGS=		DESTDIR=${WRKINST} \
			etcdir=${WRKINST}${PREFIX}/share/examples/dcmtk \
			datadir=${WRKINST}${PREFIX}/share/dcmtk \
			docdir=${WRKINST}${PREFIX}/share/doc/dcmtk

USE_GROFF =		Yes

MODPERL_ADJ_FILES =	dcmpstat/tests/dcmpsprt.pl \
			dcmtls/tests/dcmtk_ca.pl

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.arch.mk>

.if ${NO_SHARED_LIBS:L} != "yes"
CFLAGS =		-fPIC

# Add paths to all directories where we have libraries built
.for l v in ${SHARED_LIBS}
TEST_LD_PATH +=	${WRKBUILD}/$l/libsrc
.endfor

post-configure:
.for l v in ${SHARED_LIBS}
	cp ${WRKSRC}/$l/libsrc/Makefile{,.beforeaddso}
	LIBFILE=lib$l.so.$v awk -f ${FILESDIR}/addso.awk \
		<${WRKSRC}/$l/libsrc/Makefile \
		>${WRKSRC}/$l/libsrc/Makefile.new
	mv ${WRKSRC}/$l/libsrc/Makefile{.new,}
.endfor
.endif    # ${NO_SHARED_LIBS:L} != "yes"

post-install:
.for l v in ${SHARED_LIBS}
	cp ${WRKSRC}/$l/libsrc/lib$l.so* ${WRKINST}/usr/local/lib/lib$l.so.$v
.endfor

do-test:
	${MODTCL_WISH_ADJ} \
		${WRKSRC}/dcmdata/tests/dcmpsdmp.tcl \
		${WRKSRC}/dcmpstat/tests/dcmpschk.tcl
	cd ${WRKBUILD} && \
		LD_LIBRARY_PATH="`echo '${TEST_LD_PATH}' | sed -e 's/ /:/g'`" \
		sh ${FILESDIR}/regress.sh

.include <bsd.port.mk>
