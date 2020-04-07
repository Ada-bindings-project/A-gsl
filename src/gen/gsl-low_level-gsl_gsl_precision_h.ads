pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package GSL.Low_Level.gsl_gsl_precision_h is

   subtype gsl_prec_t is unsigned;  -- /usr/include/gsl/gsl_precision.h:42

   gsl_prec_eps : aliased array (size_t) of aliased double  -- /usr/include/gsl/gsl_precision.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_prec_eps";

   gsl_prec_sqrt_eps : aliased array (size_t) of aliased double  -- /usr/include/gsl/gsl_precision.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_prec_sqrt_eps";

   gsl_prec_root3_eps : aliased array (size_t) of aliased double  -- /usr/include/gsl/gsl_precision.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_prec_root3_eps";

   gsl_prec_root4_eps : aliased array (size_t) of aliased double  -- /usr/include/gsl/gsl_precision.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_prec_root4_eps";

   gsl_prec_root5_eps : aliased array (size_t) of aliased double  -- /usr/include/gsl/gsl_precision.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_prec_root5_eps";

   gsl_prec_root6_eps : aliased array (size_t) of aliased double  -- /usr/include/gsl/gsl_precision.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_prec_root6_eps";

end GSL.Low_Level.gsl_gsl_precision_h;
