Index: Makefile.PL
--- Makefile.PL.orig
+++ Makefile.PL
@@ -25,7 +25,7 @@ WriteMakefile(
       $ENV{SKIP_FOR_CORE}
         ? ()
 	    : (PREREQ_PM   => { 'Compress::Raw::Bzip2' => $::VERSION,
-		                    'Compress::Raw::Zlib'  => $::VERSION,
+		                    'Compress::Raw::Zlib'  => '2.096',
 		                    'Scalar::Util'  => 0,
                             'Encode'        => 0,
 		                    $] >= 5.005 && $] < 5.006
