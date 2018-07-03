$OpenBSD$

Index: uapi_bsd.go
--- uapi_bsd.go.orig
+++ uapi_bsd.go
@@ -20,7 +20,7 @@ import (
 
 const (
 	ipcErrorIO        = -int64(unix.EIO)
-	ipcErrorProtocol  = -int64(unix.EPROTO)
+	ipcErrorProtocol  = -int64(95)
 	ipcErrorInvalid   = -int64(unix.EINVAL)
 	ipcErrorPortInUse = -int64(unix.EADDRINUSE)
 	socketDirectory   = "/var/run/wireguard"
