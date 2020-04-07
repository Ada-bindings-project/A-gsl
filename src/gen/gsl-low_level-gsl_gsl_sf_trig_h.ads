pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_trig_h is

   function gsl_sf_sin_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_sin_e";

   function gsl_sf_sin (x : double) return double  -- /usr/include/gsl/gsl_sf_trig.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_sin";

   function gsl_sf_cos_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_cos_e";

   function gsl_sf_cos (x : double) return double  -- /usr/include/gsl/gsl_sf_trig.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_cos";

   function gsl_sf_hypot_e
     (x : double;
      y : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hypot_e";

   function gsl_sf_hypot (x : double; y : double) return double  -- /usr/include/gsl/gsl_sf_trig.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hypot";

   function gsl_sf_complex_sin_e
     (zr : double;
      zi : double;
      szr : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      szi : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_complex_sin_e";

   function gsl_sf_complex_cos_e
     (zr : double;
      zi : double;
      czr : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      czi : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_complex_cos_e";

   function gsl_sf_complex_logsin_e
     (zr : double;
      zi : double;
      lszr : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      lszi : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_complex_logsin_e";

   function gsl_sf_sinc_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_sinc_e";

   function gsl_sf_sinc (x : double) return double  -- /usr/include/gsl/gsl_sf_trig.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_sinc";

   function gsl_sf_lnsinh_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnsinh_e";

   function gsl_sf_lnsinh (x : double) return double  -- /usr/include/gsl/gsl_sf_trig.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnsinh";

   function gsl_sf_lncosh_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lncosh_e";

   function gsl_sf_lncosh (x : double) return double  -- /usr/include/gsl/gsl_sf_trig.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lncosh";

   function gsl_sf_polar_to_rect
     (r : double;
      theta : double;
      x : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      y : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_polar_to_rect";

   function gsl_sf_rect_to_polar
     (x : double;
      y : double;
      r : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      theta : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_rect_to_polar";

   function gsl_sf_sin_err_e
     (x : double;
      dx : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_sin_err_e";

   function gsl_sf_cos_err_e
     (x : double;
      dx : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_cos_err_e";

   function gsl_sf_angle_restrict_symm_e (theta : access double) return int  -- /usr/include/gsl/gsl_sf_trig.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_angle_restrict_symm_e";

   function gsl_sf_angle_restrict_symm (theta : double) return double  -- /usr/include/gsl/gsl_sf_trig.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_angle_restrict_symm";

   function gsl_sf_angle_restrict_pos_e (theta : access double) return int  -- /usr/include/gsl/gsl_sf_trig.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_angle_restrict_pos_e";

   function gsl_sf_angle_restrict_pos (theta : double) return double  -- /usr/include/gsl/gsl_sf_trig.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_angle_restrict_pos";

   function gsl_sf_angle_restrict_symm_err_e (theta : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_angle_restrict_symm_err_e";

   function gsl_sf_angle_restrict_pos_err_e (theta : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_trig.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_angle_restrict_pos_err_e";

end GSL.Low_Level.gsl_gsl_sf_trig_h;
