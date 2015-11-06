#!/bin/bash

(
	set -x
	cd $PHPENV_ROOT/php-src;
	patch -p 1 <<THE_END
--- a/configure
+++ b/configure
@@ -65164,6 +65164,7 @@
 
 else
   
+echo
   
 fi
 
THE_END
)