pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with System;
with GSL.Low_Level.gsl_gsl_math_h;

package GSL.Low_Level.gsl_gsl_roots_h is

   type gsl_root_fsolver_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_roots.h:41
      size : aliased size_t;  -- /usr/include/gsl/gsl_roots.h:42
      set : access function
           (arg1 : System.Address;
            arg2 : access GSL.Low_Level.gsl_gsl_math_h.gsl_function;
            arg3 : access double;
            arg4 : double;
            arg5 : double) return int;  -- /usr/include/gsl/gsl_roots.h:43
      iterate : access function
           (arg1 : System.Address;
            arg2 : access GSL.Low_Level.gsl_gsl_math_h.gsl_function;
            arg3 : access double;
            arg4 : access double;
            arg5 : access double) return int;  -- /usr/include/gsl/gsl_roots.h:44
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_roots.h:46

   type gsl_root_fsolver is record
      c_type : access constant gsl_root_fsolver_type;  -- /usr/include/gsl/gsl_roots.h:50
      c_function : access GSL.Low_Level.gsl_gsl_math_h.gsl_function;  -- /usr/include/gsl/gsl_roots.h:51
      root : aliased double;  -- /usr/include/gsl/gsl_roots.h:52
      x_lower : aliased double;  -- /usr/include/gsl/gsl_roots.h:53
      x_upper : aliased double;  -- /usr/include/gsl/gsl_roots.h:54
      state : System.Address;  -- /usr/include/gsl/gsl_roots.h:55
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_roots.h:57

   type gsl_root_fdfsolver_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_roots.h:61
      size : aliased size_t;  -- /usr/include/gsl/gsl_roots.h:62
      set : access function
           (arg1 : System.Address;
            arg2 : access GSL.Low_Level.gsl_gsl_math_h.gsl_function_fdf;
            arg3 : access double) return int;  -- /usr/include/gsl/gsl_roots.h:63
      iterate : access function
           (arg1 : System.Address;
            arg2 : access GSL.Low_Level.gsl_gsl_math_h.gsl_function_fdf;
            arg3 : access double) return int;  -- /usr/include/gsl/gsl_roots.h:64
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_roots.h:66

   type gsl_root_fdfsolver is record
      c_type : access constant gsl_root_fdfsolver_type;  -- /usr/include/gsl/gsl_roots.h:70
      fdf : access GSL.Low_Level.gsl_gsl_math_h.gsl_function_fdf;  -- /usr/include/gsl/gsl_roots.h:71
      root : aliased double;  -- /usr/include/gsl/gsl_roots.h:72
      state : System.Address;  -- /usr/include/gsl/gsl_roots.h:73
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_roots.h:75

   function gsl_root_fsolver_alloc (arg1 : access constant gsl_root_fsolver_type) return access gsl_root_fsolver  -- /usr/include/gsl/gsl_roots.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_fsolver_alloc";

   procedure gsl_root_fsolver_free (s : access gsl_root_fsolver)  -- /usr/include/gsl/gsl_roots.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_fsolver_free";

   function gsl_root_fsolver_set
     (s : access gsl_root_fsolver;
      f : access GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      x_lower : double;
      x_upper : double) return int  -- /usr/include/gsl/gsl_roots.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_fsolver_set";

   function gsl_root_fsolver_iterate (s : access gsl_root_fsolver) return int  -- /usr/include/gsl/gsl_roots.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_fsolver_iterate";

   function gsl_root_fsolver_name (arg1 : access constant gsl_root_fsolver) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_roots.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_fsolver_name";

   function gsl_root_fsolver_root (s : access constant gsl_root_fsolver) return double  -- /usr/include/gsl/gsl_roots.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_fsolver_root";

   function gsl_root_fsolver_x_lower (s : access constant gsl_root_fsolver) return double  -- /usr/include/gsl/gsl_roots.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_fsolver_x_lower";

   function gsl_root_fsolver_x_upper (s : access constant gsl_root_fsolver) return double  -- /usr/include/gsl/gsl_roots.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_fsolver_x_upper";

   function gsl_root_fdfsolver_alloc (arg1 : access constant gsl_root_fdfsolver_type) return access gsl_root_fdfsolver  -- /usr/include/gsl/gsl_roots.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_fdfsolver_alloc";

   function gsl_root_fdfsolver_set
     (s : access gsl_root_fdfsolver;
      fdf : access GSL.Low_Level.gsl_gsl_math_h.gsl_function_fdf;
      root : double) return int  -- /usr/include/gsl/gsl_roots.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_fdfsolver_set";

   function gsl_root_fdfsolver_iterate (s : access gsl_root_fdfsolver) return int  -- /usr/include/gsl/gsl_roots.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_fdfsolver_iterate";

   procedure gsl_root_fdfsolver_free (s : access gsl_root_fdfsolver)  -- /usr/include/gsl/gsl_roots.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_fdfsolver_free";

   function gsl_root_fdfsolver_name (arg1 : access constant gsl_root_fdfsolver) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_roots.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_fdfsolver_name";

   function gsl_root_fdfsolver_root (s : access constant gsl_root_fdfsolver) return double  -- /usr/include/gsl/gsl_roots.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_fdfsolver_root";

   function gsl_root_test_interval
     (x_lower : double;
      x_upper : double;
      epsabs : double;
      epsrel : double) return int  -- /usr/include/gsl/gsl_roots.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_test_interval";

   function gsl_root_test_residual (f : double; epsabs : double) return int  -- /usr/include/gsl/gsl_roots.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_test_residual";

   function gsl_root_test_delta
     (x1 : double;
      x0 : double;
      epsabs : double;
      epsrel : double) return int  -- /usr/include/gsl/gsl_roots.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_test_delta";

   gsl_root_fsolver_bisection : access constant gsl_root_fsolver_type  -- /usr/include/gsl/gsl_roots.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_fsolver_bisection";

   gsl_root_fsolver_brent : access constant gsl_root_fsolver_type  -- /usr/include/gsl/gsl_roots.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_fsolver_brent";

   gsl_root_fsolver_falsepos : access constant gsl_root_fsolver_type  -- /usr/include/gsl/gsl_roots.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_fsolver_falsepos";

   gsl_root_fdfsolver_newton : access constant gsl_root_fdfsolver_type  -- /usr/include/gsl/gsl_roots.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_fdfsolver_newton";

   gsl_root_fdfsolver_secant : access constant gsl_root_fdfsolver_type  -- /usr/include/gsl/gsl_roots.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_fdfsolver_secant";

   gsl_root_fdfsolver_steffenson : access constant gsl_root_fdfsolver_type  -- /usr/include/gsl/gsl_roots.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_root_fdfsolver_steffenson";

end GSL.Low_Level.gsl_gsl_roots_h;
