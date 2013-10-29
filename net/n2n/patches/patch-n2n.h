--- n2n.h	Tue Dec 13 22:08:12 2011
+++ /usr/ports/pobj/n2n-v1-4142/n2n-v1-4142/n2n.h	Tue Dec 13 22:09:40 2011
@@ -67,16 +67,20 @@
 #include <linux/if_tun.h>
 #endif
 
+#define __FreeBSD__
+
 #ifdef __FreeBSD__
 #include <netinet/in_systm.h>
 #endif
 
 #include <syslog.h>
 #include <sys/wait.h>
-#include <net/ethernet.h>
+#include <net/if.h>
 #include <netinet/in.h>
 #include <netinet/ip.h>
 #include <netinet/udp.h>
+#include <netinet/if_ether.h>
+#include <netinet/in_systm.h>
 #include <signal.h>
 #include <arpa/inet.h>
 #include <sys/types.h>
