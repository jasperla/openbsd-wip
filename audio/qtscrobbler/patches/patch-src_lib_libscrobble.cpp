$OpenBSD$
--- src/lib/libscrobble.cpp.orig	Fri Aug  7 12:25:18 2009
+++ src/lib/libscrobble.cpp	Fri Aug  7 13:21:15 2009
@@ -187,13 +187,20 @@ Scrobble::Scrobble()
     tzset();
 
     // our own copy - returned via get_dst
-    is_dst = daylight;
+    time_t t = time(0);
+    tm *local_tm;
+    local_tm = localtime((time(&t), &t));
+
+    is_dst = local_tm->tm_isdst;
     (is_dst)?zonename=tzname[1]:zonename=tzname[0];
 
     if (is_dst < 0)
         add_log(LOG_ERROR, "is_dst < 0");
 
-    offset = -(int)timezone;
+    struct timezone tz;
+    struct timeval tp;
+    gettimeofday(&tp, &tz);
+    offset = -(tz.tz_minuteswest * 60);
 
 #ifdef altzone // defined in <ctime>, but only recent(ish) POSIX
     offset = -(int)altzone;
