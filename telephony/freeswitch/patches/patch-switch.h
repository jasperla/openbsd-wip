--- src/include/switch.h	Tue Apr  6 22:05:28 2010
+++ src/include/switch.h	Wed Dec  8 14:16:54 2010
@@ -73,6 +73,12 @@
 #endif
 #endif
 #endif
+
+#include <sys/types.h>
+#include <sys/socket.h>
+#include <netinet/in.h>
+#include <arpa/inet.h>
+
 #include <stdlib.h>
 #include <stdio.h>
 #include <stdarg.h>
