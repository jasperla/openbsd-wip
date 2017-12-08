# This Makefile for J written by Brian Callahan <bcallah@openbsd.org>
# and released into the Public Domain.

OBJS=	jconsole.o jeload.o

LOBJS=	a.o ab.o af.o ai.o am.o am1.o amn.o ao.o ap.o ar.o as.o au.o c.o ca.o \
	cc.o cd.o cf.o cg.o ch.o cip.o cl.o cp.o cpdtsp.o cr.o crs.o ct.o \
	cu.o cv.o cx.o d.o dc.o dss.o dstop.o dsusp.o dtoa.o f.o f2.o fbu.o \
	i.o io.o j.o jdlllic.o k.o m.o mbx.o p.o pv.o px.o r.o rl.o rt.o s.o \
	sc.o sl.o sn.o t.o u.o v.o v0.o v1.o v2.o va1.o va1ss.o va2.o va2s.o \
	va2ss.o vamultsp.o vb.o vbang.o vbit.o vcant.o vchar.o vcat.o \
	vcatsp.o vcomp.o vcompsc.o vd.o vdx.o ve.o vf.o vfft.o vfrom.o \
	vfromsp.o vg.o vgauss.o vgcomp.o vgranking.o vgsort.o vgsp.o vi.o \
	viix.o visp.o vm.o vo.o vp.o vq.o vrand.o vrep.o vs.o vsb.o vt.o vu.o \
	vx.o vz.o w.o wc.o wn.o ws.o x.o x15.o xa.o xb.o xc.o xcrc.o xd.o \
	xf.o xfmt.o xh.o xi.o xl.o xo.o xs.o xt.o xu.o

CFLAGS+=-fPIC -fwrapv -fno-strict-aliasing -DC_NOMULTINTRINSIC -DREADLINE

all: lib ${OBJS}
	${CC} ${LDFLAGS} -L. -o j ${OBJS} -ledit -lj -lm -lncurses

lib: ${LOBJS}
	${CC} ${LDFLAGS} -shared -o libj.so.${LIBj_VERSION} ${LOBJS}

#install: Uses the port system mechanism to ensure correctness.
