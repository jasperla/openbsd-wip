# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

FULL_VERSION =		3.11.0rc2
SHARED_LIBS =		python3.11 0.0
VERSION_SPEC =		>=3.11,<3.12
PORTROACH =		limit:^3\.11

# <tab><tab># in makefile; probably just a mistake in the rc
USE_GMAKE =		Yes

# the new PY_CHECK_FUNC somehow thinks we have this
CONFIGURE_ENV +=	ac_cv_func_ctermid_r=no

.include <bsd.port.mk>
