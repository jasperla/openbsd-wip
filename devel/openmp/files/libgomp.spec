# Minimal implementation by Brian Callahan <bcallah@openbsd.org>
# Public Domain
#
# Let ports-gcc use openmp.
*link_gomp: -L${TRUEPREFIX}/lib -lgomp
