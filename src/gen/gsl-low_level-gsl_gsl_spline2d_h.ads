pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_interp2d_h;

limited with GSL.Low_Level.gsl_gsl_interp_h;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_spline2d_h is

   type gsl_spline2d is record
      interp_object : aliased GSL.Low_Level.gsl_gsl_interp2d_h.gsl_interp2d;  -- /usr/include/gsl/gsl_spline2d.h:45
      xarr : access double;  -- /usr/include/gsl/gsl_spline2d.h:46
      yarr : access double;  -- /usr/include/gsl/gsl_spline2d.h:47
      zarr : access double;  -- /usr/include/gsl/gsl_spline2d.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_spline2d.h:49

   function gsl_spline2d_alloc
     (arg1 : access constant GSL.Low_Level.gsl_gsl_interp2d_h.gsl_interp2d_type;
      arg2 : size_t;
      arg3 : size_t) return access gsl_spline2d  -- /usr/include/gsl/gsl_spline2d.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_alloc";

   function gsl_spline2d_init
     (interp : access gsl_spline2d;
      xa : access double;
      ya : access double;
      za : access double;
      xsize : size_t;
      ysize : size_t) return int  -- /usr/include/gsl/gsl_spline2d.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_init";

   procedure gsl_spline2d_free (interp : access gsl_spline2d)  -- /usr/include/gsl/gsl_spline2d.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_free";

   function gsl_spline2d_eval
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_spline2d.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval";

   function gsl_spline2d_eval_e
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_spline2d.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_e";

   function gsl_spline2d_eval_deriv_x
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_spline2d.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_deriv_x";

   function gsl_spline2d_eval_deriv_x_e
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_spline2d.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_deriv_x_e";

   function gsl_spline2d_eval_deriv_y
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_spline2d.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_deriv_y";

   function gsl_spline2d_eval_deriv_y_e
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_spline2d.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_deriv_y_e";

   function gsl_spline2d_eval_deriv_xx
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_spline2d.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_deriv_xx";

   function gsl_spline2d_eval_deriv_xx_e
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_spline2d.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_deriv_xx_e";

   function gsl_spline2d_eval_deriv_yy
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_spline2d.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_deriv_yy";

   function gsl_spline2d_eval_deriv_yy_e
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_spline2d.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_deriv_yy_e";

   function gsl_spline2d_eval_deriv_xy
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_spline2d.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_deriv_xy";

   function gsl_spline2d_eval_deriv_xy_e
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      ya : access GSL.Low_Level.gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_spline2d.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_deriv_xy_e";

   function gsl_spline2d_min_size (interp : access constant gsl_spline2d) return size_t  -- /usr/include/gsl/gsl_spline2d.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_min_size";

   function gsl_spline2d_name (arg1 : access constant gsl_spline2d) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_spline2d.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_name";

   function gsl_spline2d_set
     (interp : access constant gsl_spline2d;
      zarr : access double;
      i : size_t;
      j : size_t;
      z : double) return int  -- /usr/include/gsl/gsl_spline2d.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_set";

   function gsl_spline2d_get
     (interp : access constant gsl_spline2d;
      zarr : access double;
      i : size_t;
      j : size_t) return double  -- /usr/include/gsl/gsl_spline2d.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_get";

end GSL.Low_Level.gsl_gsl_spline2d_h;
