pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
limited with GSL.Low_Level.gsl_gsl_interp_h;

with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_spline_h is

   type gsl_spline is record
      interp : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp;  -- /usr/include/gsl/gsl_spline.h:40
      x : access double;  -- /usr/include/gsl/gsl_spline.h:41
      y : access double;  -- /usr/include/gsl/gsl_spline.h:42
      size : aliased size_t;  -- /usr/include/gsl/gsl_spline.h:43
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_spline.h:44

   function gsl_spline_alloc (arg1 : access constant GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_type; arg2 : size_t) return access gsl_spline  -- /usr/include/gsl/gsl_spline.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline_alloc";

   function gsl_spline_init
     (spline : access gsl_spline;
      xa : access double;
      ya : access double;
      size : size_t) return int  -- /usr/include/gsl/gsl_spline.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline_init";

   function gsl_spline_name (arg1 : access constant gsl_spline) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_spline.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline_name";

   function gsl_spline_min_size (spline : access constant gsl_spline) return unsigned  -- /usr/include/gsl/gsl_spline.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline_min_size";

   function gsl_spline_eval_e
     (spline : access constant gsl_spline;
      x : double;
      a : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      y : access double) return int  -- /usr/include/gsl/gsl_spline.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline_eval_e";

   function gsl_spline_eval
     (spline : access constant gsl_spline;
      x : double;
      a : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_spline.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline_eval";

   function gsl_spline_eval_deriv_e
     (spline : access constant gsl_spline;
      x : double;
      a : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      y : access double) return int  -- /usr/include/gsl/gsl_spline.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline_eval_deriv_e";

   function gsl_spline_eval_deriv
     (spline : access constant gsl_spline;
      x : double;
      a : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_spline.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline_eval_deriv";

   function gsl_spline_eval_deriv2_e
     (spline : access constant gsl_spline;
      x : double;
      a : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      y : access double) return int  -- /usr/include/gsl/gsl_spline.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline_eval_deriv2_e";

   function gsl_spline_eval_deriv2
     (spline : access constant gsl_spline;
      x : double;
      a : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_spline.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline_eval_deriv2";

   function gsl_spline_eval_integ_e
     (spline : access constant gsl_spline;
      a : double;
      b : double;
      acc : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      y : access double) return int  -- /usr/include/gsl/gsl_spline.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline_eval_integ_e";

   function gsl_spline_eval_integ
     (spline : access constant gsl_spline;
      a : double;
      b : double;
      acc : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_spline.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline_eval_integ";

   procedure gsl_spline_free (spline : access gsl_spline)  -- /usr/include/gsl/gsl_spline.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline_free";

end GSL.Low_Level.gsl_gsl_spline_h;
