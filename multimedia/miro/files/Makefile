all:
	swig -python miro_openbsd.i
	cc -c miro_openbsd.c miro_openbsd_wrap.c \
            -I/usr/local/include/python2.5
	ld -shared miro_openbsd.o miro_openbsd_wrap.o -o _miro_openbsd.so 
     
clean:
	rm -f *.o *.so miro_openbsd_wrap.c miro_openbsd.py miro_openbsd.pyc
