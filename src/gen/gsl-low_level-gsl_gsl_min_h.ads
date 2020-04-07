pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with System;
with GSL.Low_Level.gsl_gsl_math_h;

package GSL.Low_Level.gsl_gsl_min_h is

   type gsl_min_fminimizer_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_min.h:41
      size : aliased size_t;  -- /usr/include/gsl/gsl_min.h:42
      set : access function
           (arg1 : System.Address;
            arg2 : access GSL.Low_Level.gsl_gsl_math_h.gsl_function;
            arg3 : double;
            arg4 : double;
            arg5 : double;
            arg6 : double;
            arg7 : double;
            arg8 : double) return int;  -- /usr/include/gsl/gsl_min.h:43
      iterate : access function
           (arg1 : System.Address;
            arg2 : access GSL.Low_Level.gsl_gsl_math_h.gsl_function;
            arg3 : access double;
            arg4 : access double;
            arg5 : access double;
            arg6 : access double;
            arg7 : access double;
            arg8 : access double) return int;  -- /usr/include/gsl/gsl_min.h:44
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_min.h:46

   type gsl_min_fminimizer is record
      c_type : access constant gsl_min_fminimizer_type;  -- /usr/include/gsl/gsl_min.h:50
      c_function : access GSL.Low_Level.gsl_gsl_math_h.gsl_function;  -- /usr/include/gsl/gsl_min.h:51
      x_minimum : aliased double;  -- /usr/include/gsl/gsl_min.h:52
      x_lower : aliased double;  -- /usr/include/gsl/gsl_min.h:53
      x_upper : aliased double;  -- /usr/include/gsl/gsl_min.h:54
      f_minimum : aliased double;  -- /usr/include/gsl/gsl_min.h:55
      f_lower : aliased double;  -- /usr/include/gsl/gsl_min.h:55
      f_upper : aliased double;  -- /usr/include/gsl/gsl_min.h:55
      state : System.Address;  -- /usr/include/gsl/gsl_min.h:56
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_min.h:58

   function gsl_min_fminimizer_alloc (arg1 : access constant gsl_min_fminimizer_type) return access gsl_min_fminimizer  -- /usr/include/gsl/gsl_min.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_min_fminimizer_alloc";

   procedure gsl_min_fminimizer_free (s : access gsl_min_fminimizer)  -- /usr/include/gsl/gsl_min.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_min_fminimizer_free";

   function gsl_min_fminimizer_set
     (s : access gsl_min_fminimizer;
      f : access GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      x_minimum : double;
      x_lower : double;
      x_upper : double) return int  -- /usr/include/gsl/gsl_min.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_min_fminimizer_set";

   function gsl_min_fminimizer_set_with_values
     (s : access gsl_min_fminimizer;
      f : access GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      x_minimum : double;
      f_minimum : double;
      x_lower : double;
      f_lower : double;
      x_upper : double;
      f_upper : double) return int  -- /usr/include/gsl/gsl_min.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_min_fminimizer_set_with_values";

   function gsl_min_fminimizer_iterate (s : access gsl_min_fminimizer) return int  -- /usr/include/gsl/gsl_min.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_min_fminimizer_iterate";

   function gsl_min_fminimizer_name (arg1 : access constant gsl_min_fminimizer) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_min.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_min_fminimizer_name";

   function gsl_min_fminimizer_x_minimum (s : access constant gsl_min_fminimizer) return double  -- /usr/include/gsl/gsl_min.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_min_fminimizer_x_minimum";

   function gsl_min_fminimizer_x_lower (s : access constant gsl_min_fminimizer) return double  -- /usr/include/gsl/gsl_min.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_min_fminimizer_x_lower";

   function gsl_min_fminimizer_x_upper (s : access constant gsl_min_fminimizer) return double  -- /usr/include/gsl/gsl_min.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_min_fminimizer_x_upper";

   function gsl_min_fminimizer_f_minimum (s : access constant gsl_min_fminimizer) return double  -- /usr/include/gsl/gsl_min.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_min_fminimizer_f_minimum";

   function gsl_min_fminimizer_f_lower (s : access constant gsl_min_fminimizer) return double  -- /usr/include/gsl/gsl_min.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_min_fminimizer_f_lower";

   function gsl_min_fminimizer_f_upper (s : access constant gsl_min_fminimizer) return double  -- /usr/include/gsl/gsl_min.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_min_fminimizer_f_upper";

   function gsl_min_fminimizer_minimum (s : access constant gsl_min_fminimizer) return double  -- /usr/include/gsl/gsl_min.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_min_fminimizer_minimum";

   function gsl_min_test_interval
     (x_lower : double;
      x_upper : double;
      epsabs : double;
      epsrel : double) return int  -- /usr/include/gsl/gsl_min.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_min_test_interval";

   gsl_min_fminimizer_goldensection : access constant gsl_min_fminimizer_type  -- /usr/include/gsl/gsl_min.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_min_fminimizer_goldensection";

   gsl_min_fminimizer_brent : access constant gsl_min_fminimizer_type  -- /usr/include/gsl/gsl_min.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_min_fminimizer_brent";

   gsl_min_fminimizer_quad_golden : access constant gsl_min_fminimizer_type  -- /usr/include/gsl/gsl_min.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_min_fminimizer_quad_golden";

   type gsl_min_bracketing_function is access function
        (arg1 : access GSL.Low_Level.gsl_gsl_math_h.gsl_function;
         arg2 : access double;
         arg3 : access double;
         arg4 : access double;
         arg5 : access double;
         arg6 : access double;
         arg7 : access double;
         arg8 : size_t) return int
   with Convention => C;  -- /usr/include/gsl/gsl_min.h:97

   function gsl_min_find_bracket
     (f : access GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      x_minimum : access double;
      f_minimum : access double;
      x_lower : access double;
      f_lower : access double;
      x_upper : access double;
      f_upper : access double;
      eval_max : size_t) return int  -- /usr/include/gsl/gsl_min.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_min_find_bracket";

end GSL.Low_Level.gsl_gsl_min_h;
