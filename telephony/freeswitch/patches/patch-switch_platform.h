--- src/include/switch_platform.h	Thu Dec  9 13:58:39 2010
+++ src/include/switch_platform.h	Thu Dec  9 13:53:51 2010
@@ -117,7 +117,8 @@ typedef int gid_t;
 #endif
 #include <inttypes.h>
 #include <unistd.h>
-#include <arpa/inet.h>
+//#include <arpa/inet.h>
+#include <sys/types.h>
 #include <sys/socket.h>
 #include <netinet/in.h>
 #endif // _MSC_VER
