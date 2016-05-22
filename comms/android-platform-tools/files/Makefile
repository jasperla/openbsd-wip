SRCDIR ?=	${.CURDIR}

.PATH: ${FILESDIR}
adb-SRCS +=		usb_libusb.cpp
adb-SRCS +=		get_my_path_freebsd.cpp
fastboot-SRCS +=	usb_freebsd.cpp
fastboot-SRCS +=	util_freebsd.cpp

.PATH: ${SRCDIR}/adb
adb-SRCS +=		adb.cpp
adb-SRCS +=		adb_auth.cpp
adb-SRCS +=		adb_auth_host.cpp
adb-SRCS +=		adb_client.cpp
adb-SRCS +=		adb_io.cpp
adb-SRCS +=		adb_listeners.cpp
adb-SRCS +=		adb_main.cpp
adb-SRCS +=		adb_utils.cpp
adb-SRCS +=		commandline.cpp
adb-SRCS +=		console.cpp
adb-SRCS +=		fdevent.cpp
adb-SRCS +=		file_sync_client.cpp
adb-SRCS +=		services.cpp
adb-SRCS +=		sockets.cpp
adb-SRCS +=		transport.cpp
adb-SRCS +=		transport_local.cpp
adb-SRCS +=		transport_usb.cpp

.PATH: ${SRCDIR}/base
SRCS +=			file.cpp
adb-SRCS +=		logging.cpp
adb-SRCS +=		strings.cpp
adb-SRCS +=		stringprintf.cpp

.PATH: ${SRCDIR}/fastboot
fastboot-SRCS +=	bootimg_utils.cpp
fastboot-SRCS +=	engine.c
fastboot-SRCS +=	fastboot.cpp
fastboot-SRCS +=	fs.c
fastboot-SRCS +=	protocol.c
fastboot-SRCS +=	util.c

.PATH: ${SRCDIR}/ext4_utils
fastboot-SRCS +=	allocate.c
fastboot-SRCS +=	contents.c
fastboot-SRCS +=	crc16.c
fastboot-SRCS +=	ext4_sb.c
fastboot-SRCS +=	ext4_utils.c
fastboot-SRCS +=	ext4fixup.c
fastboot-SRCS +=	extent.c
fastboot-SRCS +=	indirect.c
fastboot-SRCS +=	make_ext4fs.c
fastboot-SRCS +=	sha1.c
fastboot-SRCS +=	wipe.c

.PATH: ${SRCDIR}/liblog
SRCS +=			fake_log_device.c
SRCS +=			logd_write.c

.PATH: ${SRCDIR}/libcutils
adb-SRCS +=		socket_inaddr_any_server.c
adb-SRCS +=		socket_local_client.c
adb-SRCS +=		socket_local_server.c
adb-SRCS +=		socket_loopback_client.c
adb-SRCS +=		socket_loopback_server.c
adb-SRCS +=		socket_network_client.c
adb-SRCS +=		load_file.c
adb-SRCS +=		threads.c

.PATH: ${SRCDIR}/libselinux/src
fastboot-SRCS +=	callbacks.c
fastboot-SRCS +=	check_context.c
fastboot-SRCS +=	freecon.c
fastboot-SRCS +=	init.c
fastboot-SRCS +=	label.c
fastboot-SRCS +=	label_android_property.c
fastboot-SRCS +=	label_file.c

.PATH: ${SRCDIR}/libsparse
fastboot-SRCS +=	backed_block.c
fastboot-SRCS +=	output_file.c
fastboot-SRCS +=	sparse.c
fastboot-SRCS +=	sparse_crc32.c
fastboot-SRCS +=	sparse_err.c
fastboot-SRCS +=	sparse_read.c

.PATH: ${SRCDIR}/libutils
fastboot-SRCS +=	FileMap.cpp

.PATH: ${SRCDIR}/libziparchive
fastboot-SRCS +=	zip_archive.cc

.cpp.o:
	${CC} ${CXXFLAGS} -I${<:H}/include -c -o $@ $<

.c.o:
	${CC} ${CFLAGS} -I${<:H}/include -c -o $@ $<

adb-OBJS =		${SRCS:.c=.o:.cpp=.o} ${adb-SRCS:.c=.o:.cpp=.o}
fastboot-OBJS =		${SRCS:.c=.o:.cpp=.o} ${fastboot-SRCS:.c=.o:.cpp=.o}

all: adb fastboot

adb: ${adb-OBJS}
	${CC} -o $@ ${LIBS} ${adb-OBJS}
