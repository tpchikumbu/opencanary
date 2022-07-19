--- opencanary/modules/example1.py.orig	2022-07-01 15:59:20 UTC
+++ opencanary/modules/example1.py
@@ -1,9 +1,9 @@
+from __future__ import print_function
 from opencanary.modules import CanaryService
 
 from twisted.internet.protocol import Protocol
 from twisted.internet.protocol import Factory
 from twisted.application import internet
-from __future__ import print_function
 
 class Example1Protocol(Protocol):
     """
