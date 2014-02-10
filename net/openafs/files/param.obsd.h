/*
 * Thanks to Jim Rees and University of Michigan CITI, for the initial
 * OpenBSD porting work.
 */

#ifndef	AFS_PARAM_H
#define	AFS_PARAM_H

#ifndef IGNORE_STDS_H
#include <sys/param.h>
#endif

#define SYS_NAME		"%ARCH%_obsd%OSrev%"
#define SYS_NAME_ID		SYS_NAME_ID_%ARCH%_obsd%OSrev%

#define AFS_XBSD_ENV		1	/* {Free,Open,Net}BSD */
#define AFS_X86_XBSD_ENV	1

#define AFS_NAMEI_ENV		1	/* User space interface to file system */
#define AFS_64BIT_ENV		1
#define AFS_64BIT_CLIENT	1
#define AFS_64BIT_IOPS_ENV	1	/* Needed for NAMEI */
#define AFS_OBSD_ENV		1
#define AFS_OBSD34_ENV		1
#define AFS_OBSD35_ENV		1
#define AFS_OBSD36_ENV		1
#define AFS_OBSD37_ENV		1
#define AFS_OBSD38_ENV		1
#define AFS_OBSD39_ENV		1
#define AFS_OBSD40_ENV		1
#define AFS_OBSD41_ENV		1
#define AFS_OBSD42_ENV		1
#define AFS_OBSD43_ENV		1
#define AFS_OBSD44_ENV		1
#define AFS_OBSD45_ENV		1
#define AFS_OBSD46_ENV		1
#define AFS_OBSD47_ENV		1
#define AFS_OBSD48_ENV		1
#define AFS_OBSD49_ENV		1
#define AFS_OBSD50_ENV		1
#define AFS_OBSD51_ENV		1
#define AFS_OBSD52_ENV		1
#define AFS_OBSD53_ENV		1
#define AFS_OBSD54_ENV		1
#define AFS_OBSD55_ENV		1
#define AFS_OBSD%OSrev%_ENV		1
#define AFS_NONFSTRANS		1
#define AFS_VM_RDWR_ENV		1
#define AFS_VFS_ENV		1
#define AFS_VFSINCL_ENV		1

#define FTRUNC O_TRUNC

#define AFS_SYSCALL		208
#define AFS_MOUNT_AFS		"afs"

#define RXK_LISTENER_ENV	1
#define AFS_GCPAGS	        0	/* if nonzero, garbage collect PAGs */
#define AFS_USE_GETTIMEOFDAY    1	/* use gettimeofday to implement rx clock */

#include <sys/endian.h>
#if _BYTE_ORDER == _LITTLE_ENDIAN
#define AFSLITTLE_ENDIAN	1
#else
#define AFSBIG_ENDIAN		1
#endif

#ifndef IGNORE_STDS_H
#include <afs/afs_sysnames.h>
#endif

/* Extra kernel definitions (from kdefs file) */
#ifdef _KERNEL
#define AFS_GLOBAL_SUNLOCK	1
#define	AFS_SHORTGID		0	/* are group id's short? */

#if	!defined(ASSEMBLER) && !defined(__LANGUAGE_ASSEMBLY__)
enum vcexcl { NONEXCL, EXCL };

#ifndef MIN
#define MIN(A,B) ((A) < (B) ? (A) : (B))
#endif
#ifndef MAX
#define MAX(A,B) ((A) > (B) ? (A) : (B))
#endif

#endif /* ! ASSEMBLER & ! __LANGUAGE_ASSEMBLY__ */
#endif /* _KERNEL */

#if defined(UKERNEL)

#define AFS_USR_OBSD_ENV	1

#include <afs/afs_sysnames.h>

#define AFS_USERSPACE_IP_ADDR	1
#define RXK_LISTENER_ENV	1
#define AFS_GCPAGS		0 /* if nonzero, garbage collect PAGs */

#define afsio_iov       uio_iov
#define afsio_iovcnt    uio_iovcnt
#define afsio_offset    uio_offset
#define afsio_seg       uio_segflg
#define afsio_fmode     uio_fmode
#define afsio_resid     uio_resid
#define AFS_UIOSYS      UIO_SYSSPACE
#define AFS_UIOUSER     UIO_USERSPACE
#define AFS_CLBYTES     MCLBYTES
#define AFS_MINCHANGE   2
#define VATTR_NULL      usr_vattr_null

#define AFS_DIRENT
#ifndef CMSERVERPREF
#define CMSERVERPREF
#endif

#if     !defined(ASSEMBLER) && !defined(__LANGUAGE_ASSEMBLY__) && !defined(IGNORE_STDS_H)
#include <limits.h>
#include <sys/param.h>
#include <sys/types.h>
#include <sys/mount.h>
#include <sys/fcntl.h>
#include <netinet/in.h>
#include <sys/uio.h>
#include <sys/socket.h>
#endif

#endif /* defined(UKERNEL) */

#endif /* AFS_PARAM_H */
