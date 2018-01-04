# Minimal implementation by Brian Callahan <bcallah@openbsd.org>
# Public Domain
#
# Let gcc-4.9 use openmp.
*link_gomp: -L${TRUEPREFIX}/lib -lgomp
