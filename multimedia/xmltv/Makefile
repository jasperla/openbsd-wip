# $OpenBSD:$

COMMENT =		Grab TV Listings in XML format

DISTNAME =		xmltv-0.5.65
CATEGORIES =		multimedia

HOMEPAGE =		http://wiki.xmltv.org/index.php/Main_Page

MAINTAINER =		Nigel Taylor <nigel@openbsd.org>

#GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=xmltv/}
EXTRACT_SUFX =		.tar.bz2

RUN_DEPENDS =	archivers/p5-Archive-Zip \
		archivers/p5-PerlIO-gzip \
		p5-DateManip->=5.42:converters/p5-DateManip \
		converters/p5-Unicode-String \
                converters/p5-Unicode-UTF8simple \
		converters/p5-JSON \
		devel/p5-IO-stringy \
		devel/p5-Term-ReadKey \
		devel/p5-Term-ProgressBar \
		devel/p5-DateTime-Format-ISO8601 \
		devel/p5-DateTime-Format-Strptime \
		devel/p5-File-Slurp \
		devel/p5-Parse-RecDescent \
		japanese/p5-Text-Kakasi \
		p5-Lingua-Preferred-0.2.4:textproc/p5-Lingua-Preferred \
		textproc/p5-Lingua-EN-Numbers-Ordinate \
		textproc/p5-XML-DOM \
		textproc/p5-XML-LibXML \
		textproc/p5-XML-LibXSLT \
		textproc/p5-XML-Simple \
		p5-XML-Parser->=2.34:textproc/p5-XML-Parser \
		p5-XML-Twig->=3.10:textproc/p5-XML-Twig \
		p5-XML-Writer->=0.46:textproc/p5-XML-Writer \
		www/p5-HTTP-Cache-Transparent \
		p5-HTML-Parser->=3.34:www/p5-HTML-Parser \
		www/p5-HTML-TableExtract \
		p5-libwww->=5.65:www/p5-libwww \
		www/p5-SOAP-Lite \
		www/p5-WWW-Mechanize \
		x11/p5-Tk \
		x11/p5-Tk-TableMatrix
BUILD_DEPENDS =		${RUN_DEPENDS}

CONFIGURE_STYLE = perl
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} --yes

.include <bsd.port.mk>
