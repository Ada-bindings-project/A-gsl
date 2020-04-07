pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_dilog_h is

   function gsl_sf_dilog_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_dilog.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_dilog_e";

   function gsl_sf_dilog (x : double) return double  -- /usr/include/gsl/gsl_sf_dilog.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_dilog";

   function gsl_sf_complex_dilog_xy_e
     (x : double;
      y : double;
      result_re : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      result_im : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_dilog.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_complex_dilog_xy_e";

   function gsl_sf_complex_dilog_e
     (r : double;
      theta : double;
      result_re : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      result_im : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_dilog.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_complex_dilog_e";

   function gsl_sf_complex_spence_xy_e
     (x : double;
      y : double;
      real_sp : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      imag_sp : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_dilog.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_complex_spence_xy_e";

end GSL.Low_Level.gsl_gsl_sf_dilog_h;
