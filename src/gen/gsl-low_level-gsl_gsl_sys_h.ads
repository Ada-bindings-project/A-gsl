pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package GSL.Low_Level.gsl_gsl_sys_h is

   function gsl_log1p (x : double) return double  -- /usr/include/gsl/gsl_sys.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_log1p";

   function gsl_expm1 (x : double) return double  -- /usr/include/gsl/gsl_sys.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_expm1";

   function gsl_hypot (x : double; y : double) return double  -- /usr/include/gsl/gsl_sys.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_hypot";

   function gsl_hypot3
     (x : double;
      y : double;
      z : double) return double  -- /usr/include/gsl/gsl_sys.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_hypot3";

   function gsl_acosh (x : double) return double  -- /usr/include/gsl/gsl_sys.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_acosh";

   function gsl_asinh (x : double) return double  -- /usr/include/gsl/gsl_sys.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_asinh";

   function gsl_atanh (x : double) return double  -- /usr/include/gsl/gsl_sys.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_atanh";

   function gsl_isnan (x : double) return int  -- /usr/include/gsl/gsl_sys.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_isnan";

   function gsl_isinf (x : double) return int  -- /usr/include/gsl/gsl_sys.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_isinf";

   function gsl_finite (x : double) return int  -- /usr/include/gsl/gsl_sys.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_finite";

   function gsl_nan return double  -- /usr/include/gsl/gsl_sys.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_nan";

   function gsl_posinf return double  -- /usr/include/gsl/gsl_sys.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_posinf";

   function gsl_neginf return double  -- /usr/include/gsl/gsl_sys.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_neginf";

   function gsl_fdiv (x : double; y : double) return double  -- /usr/include/gsl/gsl_sys.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fdiv";

   function gsl_coerce_double (x : double) return double  -- /usr/include/gsl/gsl_sys.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_coerce_double";

   function gsl_coerce_float (x : float) return float  -- /usr/include/gsl/gsl_sys.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_coerce_float";

   function gsl_coerce_long_double (x : long_double) return long_double  -- /usr/include/gsl/gsl_sys.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_coerce_long_double";

   function gsl_ldexp (x : double; e : int) return double  -- /usr/include/gsl/gsl_sys.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ldexp";

   function gsl_frexp (x : double; e : access int) return double  -- /usr/include/gsl/gsl_sys.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_frexp";

   function gsl_fcmp
     (x1 : double;
      x2 : double;
      epsilon : double) return int  -- /usr/include/gsl/gsl_sys.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fcmp";

end GSL.Low_Level.gsl_gsl_sys_h;
