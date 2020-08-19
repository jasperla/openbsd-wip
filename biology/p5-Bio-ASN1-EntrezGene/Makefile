# $OpenBSD: Makefile,v 1.13 2019/08/09 16:03:10 cwen Exp $

COMMENT =		regular expression-based parser for NCBI Entrez Gene

DISTNAME =		Bio-ASN1-EntrezGene-1.73
EPOCH =			0
CATEGORIES =		biology

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
MODCPAN_EXAMPLES=	Yes

RUN_DEPENDS =		biology/bioperl>=1.7.7 \
			biology/p5-Bio-Cluster

.include <bsd.port.mk>
