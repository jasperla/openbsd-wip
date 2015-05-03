# $OpenBSD: Makefile.template,v 1.60 2010/10/24 20:41:23 ajacoutot Exp $

COMMENT =	extension for LaTeX table generation
	
MODULES =	cpan
DISTNAME =	LaTeX-Table-v1.0.6
PKGNAME =	p5-${DISTNAME:S/-v/-/}
CATEGORIES =	textproc

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	textproc/p5-LaTeX-Encode \
		textproc/p5-LaTeX-Driver \
		textproc/p5-Text-CSV \
		devel/p5-Moose \
		devel/p5-MooseX-FollowPBP \
		textproc/p5-Template

TEST_DEPENDS =	devel/p5-Test-NoWarnings

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIR =	${PREFIX}/share/examples/p5-LaTeX-Table

post-install:
	${MODCPAN_POST_INSTALL}
	${INSTALL_DATA_DIR} ${MODCPAN_EXAMPLES_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/examples.pdf \
		${MODCPAN_EXAMPLES_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/generate_examples.pl \
		${MODCPAN_EXAMPLES_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/imdbtop40.dat \
		${MODCPAN_EXAMPLES_DIR}

.include <bsd.port.mk>
