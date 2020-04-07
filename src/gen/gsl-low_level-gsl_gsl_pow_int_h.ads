pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package GSL.Low_Level.gsl_gsl_pow_int_h is

   function gsl_pow_2 (x : double) return double  -- /usr/include/gsl/gsl_pow_int.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_pow_2";

   function gsl_pow_3 (x : double) return double  -- /usr/include/gsl/gsl_pow_int.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_pow_3";

   function gsl_pow_4 (x : double) return double  -- /usr/include/gsl/gsl_pow_int.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_pow_4";

   function gsl_pow_5 (x : double) return double  -- /usr/include/gsl/gsl_pow_int.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_pow_5";

   function gsl_pow_6 (x : double) return double  -- /usr/include/gsl/gsl_pow_int.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_pow_6";

   function gsl_pow_7 (x : double) return double  -- /usr/include/gsl/gsl_pow_int.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_pow_7";

   function gsl_pow_8 (x : double) return double  -- /usr/include/gsl/gsl_pow_int.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_pow_8";

   function gsl_pow_9 (x : double) return double  -- /usr/include/gsl/gsl_pow_int.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_pow_9";

   function gsl_pow_int (x : double; n : int) return double  -- /usr/include/gsl/gsl_pow_int.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_pow_int";

   function gsl_pow_uint (x : double; n : unsigned) return double  -- /usr/include/gsl/gsl_pow_int.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_pow_uint";

end GSL.Low_Level.gsl_gsl_pow_int_h;
