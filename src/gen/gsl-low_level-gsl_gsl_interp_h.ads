pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;
with System;

package GSL.Low_Level.gsl_gsl_interp_h is

   type gsl_interp_accel is record
      cache : aliased size_t;  -- /usr/include/gsl/gsl_interp.h:42
      miss_count : aliased size_t;  -- /usr/include/gsl/gsl_interp.h:43
      hit_count : aliased size_t;  -- /usr/include/gsl/gsl_interp.h:44
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_interp.h:46

   type gsl_interp_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_interp.h:51
      min_size : aliased unsigned;  -- /usr/include/gsl/gsl_interp.h:52
      alloc : access function (arg1 : size_t) return System.Address;  -- /usr/include/gsl/gsl_interp.h:53
      init : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : size_t) return int;  -- /usr/include/gsl/gsl_interp.h:54
      eval : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : size_t;
            arg5 : double;
            arg6 : access gsl_interp_accel;
            arg7 : access double) return int;  -- /usr/include/gsl/gsl_interp.h:55
      eval_deriv : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : size_t;
            arg5 : double;
            arg6 : access gsl_interp_accel;
            arg7 : access double) return int;  -- /usr/include/gsl/gsl_interp.h:56
      eval_deriv2 : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : size_t;
            arg5 : double;
            arg6 : access gsl_interp_accel;
            arg7 : access double) return int;  -- /usr/include/gsl/gsl_interp.h:57
      eval_integ : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : size_t;
            arg5 : access gsl_interp_accel;
            arg6 : double;
            arg7 : double;
            arg8 : access double) return int;  -- /usr/include/gsl/gsl_interp.h:58
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_interp.h:59
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_interp.h:61

   type gsl_interp is record
      c_type : access constant gsl_interp_type;  -- /usr/include/gsl/gsl_interp.h:66
      xmin : aliased double;  -- /usr/include/gsl/gsl_interp.h:67
      xmax : aliased double;  -- /usr/include/gsl/gsl_interp.h:68
      size : aliased size_t;  -- /usr/include/gsl/gsl_interp.h:69
      state : System.Address;  -- /usr/include/gsl/gsl_interp.h:70
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_interp.h:71

   gsl_interp_linear : access constant gsl_interp_type  -- /usr/include/gsl/gsl_interp.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_linear";

   gsl_interp_polynomial : access constant gsl_interp_type  -- /usr/include/gsl/gsl_interp.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_polynomial";

   gsl_interp_cspline : access constant gsl_interp_type  -- /usr/include/gsl/gsl_interp.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_cspline";

   gsl_interp_cspline_periodic : access constant gsl_interp_type  -- /usr/include/gsl/gsl_interp.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_cspline_periodic";

   gsl_interp_akima : access constant gsl_interp_type  -- /usr/include/gsl/gsl_interp.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_akima";

   gsl_interp_akima_periodic : access constant gsl_interp_type  -- /usr/include/gsl/gsl_interp.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_akima_periodic";

   gsl_interp_steffen : access constant gsl_interp_type  -- /usr/include/gsl/gsl_interp.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_steffen";

   function gsl_interp_accel_alloc return access gsl_interp_accel  -- /usr/include/gsl/gsl_interp.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_accel_alloc";

   function gsl_interp_accel_reset (a : access gsl_interp_accel) return int  -- /usr/include/gsl/gsl_interp.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_accel_reset";

   procedure gsl_interp_accel_free (a : access gsl_interp_accel)  -- /usr/include/gsl/gsl_interp.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_accel_free";

   function gsl_interp_alloc (arg1 : access constant gsl_interp_type; arg2 : size_t) return access gsl_interp  -- /usr/include/gsl/gsl_interp.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_alloc";

   function gsl_interp_init
     (obj : access gsl_interp;
      xa : access double;
      ya : access double;
      size : size_t) return int  -- /usr/include/gsl/gsl_interp.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_init";

   function gsl_interp_name (arg1 : access constant gsl_interp) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_interp.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_name";

   function gsl_interp_min_size (interp : access constant gsl_interp) return unsigned  -- /usr/include/gsl/gsl_interp.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_min_size";

   function gsl_interp_type_min_size (T : access constant gsl_interp_type) return unsigned  -- /usr/include/gsl/gsl_interp.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_type_min_size";

   function gsl_interp_eval_e
     (obj : access constant gsl_interp;
      xa : access double;
      ya : access double;
      x : double;
      a : access gsl_interp_accel;
      y : access double) return int  -- /usr/include/gsl/gsl_interp.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_eval_e";

   function gsl_interp_eval
     (obj : access constant gsl_interp;
      xa : access double;
      ya : access double;
      x : double;
      a : access gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_eval";

   function gsl_interp_eval_deriv_e
     (obj : access constant gsl_interp;
      xa : access double;
      ya : access double;
      x : double;
      a : access gsl_interp_accel;
      d : access double) return int  -- /usr/include/gsl/gsl_interp.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_eval_deriv_e";

   function gsl_interp_eval_deriv
     (obj : access constant gsl_interp;
      xa : access double;
      ya : access double;
      x : double;
      a : access gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_eval_deriv";

   function gsl_interp_eval_deriv2_e
     (obj : access constant gsl_interp;
      xa : access double;
      ya : access double;
      x : double;
      a : access gsl_interp_accel;
      d2 : access double) return int  -- /usr/include/gsl/gsl_interp.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_eval_deriv2_e";

   function gsl_interp_eval_deriv2
     (obj : access constant gsl_interp;
      xa : access double;
      ya : access double;
      x : double;
      a : access gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_eval_deriv2";

   function gsl_interp_eval_integ_e
     (obj : access constant gsl_interp;
      xa : access double;
      ya : access double;
      a : double;
      b : double;
      acc : access gsl_interp_accel;
      result : access double) return int  -- /usr/include/gsl/gsl_interp.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_eval_integ_e";

   function gsl_interp_eval_integ
     (obj : access constant gsl_interp;
      xa : access double;
      ya : access double;
      a : double;
      b : double;
      acc : access gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_eval_integ";

   procedure gsl_interp_free (interp : access gsl_interp)  -- /usr/include/gsl/gsl_interp.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_free";

   function gsl_interp_bsearch
     (x_array : access double;
      x : double;
      index_lo : size_t;
      index_hi : size_t) return size_t  -- /usr/include/gsl/gsl_interp.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_bsearch";

   function gsl_interp_accel_find
     (a : access gsl_interp_accel;
      x_array : access double;
      size : size_t;
      x : double) return size_t  -- /usr/include/gsl/gsl_interp.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp_accel_find";

end GSL.Low_Level.gsl_gsl_interp_h;
