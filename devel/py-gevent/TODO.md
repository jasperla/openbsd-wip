Investigate test failures
=========================

```
Longest-running tests:
180.1 seconds: /usr/local/bin/python2.7 -u test__doctests.py
120.1 seconds: /usr/local/bin/python2.7 -u -m monkey_test --Event
test_urllib2.py
120.0 seconds: /usr/local/bin/python2.7 -u -m monkey_test test_subprocess.py
120.0 seconds: /usr/local/bin/python2.7 -u -m monkey_test test_urllib2.py
120.0 seconds: /usr/local/bin/python2.7 -u -m monkey_test
test_threading_local.py

17/150 tests failed in 08:01

17/150 unexpected failures
 - /usr/local/bin/python2.7 -u -m monkey_test test_threading_local.py
 - /usr/local/bin/python2.7 -u -m monkey_test test_ssl.py
 - /usr/local/bin/python2.7 -u -m monkey_test --Event test_urllib2.py
 - /usr/local/bin/python2.7 -u -m monkey_test test_signal.py
 - /usr/local/bin/python2.7 -u test___example_servers.py
 - /usr/local/bin/python2.7 -u -m monkey_test test_urllib2.py
 - /usr/local/bin/python2.7 -u test__timeout.py
 - /usr/local/bin/python2.7 -u -m monkey_test test_subprocess.py
 - /usr/local/bin/python2.7 -u test__doctests.py
 - /usr/local/bin/python2.7 -u -m monkey_test --Event test_threading_local.py
 - /usr/local/bin/python2.7 -u -m monkey_test --Event test_socket.py
 - /usr/local/bin/python2.7 -u test__pywsgi.py
 - /usr/local/bin/python2.7 -u -m monkey_test --Event test_subprocess.py
 - /usr/local/bin/python2.7 -u -m monkey_test --Event test_threading.py
 - /usr/local/bin/python2.7 -u -m monkey_test test_socket.py
 - /usr/local/bin/python2.7 -u -m monkey_test --Event test_ssl.py
 - /usr/local/bin/python2.7 -u -m monkey_test test_threading.py
```

Some of these tests are failing because we of IPv4 requests on IPv6 sockets and
vice versa, but some are not related to this issue.  Things should finally get
sorted out.

Sort out the trouble with libev configuration
=============================================

Contrary to upstream's suggestions we do not embed libev and C-Ares with Gevent.
Due to some implementation details Gevent needs libev's `config.h`.  By default
it runs `cd libev_sources && ./configure`, which is too fragile for a
network-related library with potential security impact.  We should work out the
proper way to provide it.  Possible options are:

 * Add it to devel/libev port.
 * Provide a `config.h` in `FILESDIR`.
