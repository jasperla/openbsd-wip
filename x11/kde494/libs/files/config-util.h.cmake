#ifndef CONFIG_UTIL_H
#define CONFIG_UTIL_H


/********** structs used by kdecore/util *********/

/* functions */
#cmakedefine   HAVE_FLOCK
#cmakedefine   HAVE_GCC_SYNC
#cmakedefine   HAVE_LOCKF
#cmakedefine   HAVE_MSYNC
#cmakedefine   HAVE_MONOTONIC_CLOCK
#cmakedefine   HAVE_POSIX_FALLOCATE
#cmakedefine   HAVE_PTHREAD_TIMEOUTS
#cmakedefine   HAVE_SHARED_PTHREAD_MUTEXES
#cmakedefine   HAVE_SHARED_SEMAPHORES
#cmakedefine   HAVE_SHARED_SEMAPHORES_TIMEOUTS

#endif /* CONFIG_UTIL_H */
