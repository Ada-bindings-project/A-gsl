pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_log_h is

   function gsl_sf_log_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_log.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_log_e";

   function gsl_sf_log (x : double) return double  -- /usr/include/gsl/gsl_sf_log.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_log";

   function gsl_sf_log_abs_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_log.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_log_abs_e";

   function gsl_sf_log_abs (x : double) return double  -- /usr/include/gsl/gsl_sf_log.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_log_abs";

   function gsl_sf_complex_log_e
     (zr : double;
      zi : double;
      lnr : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      theta : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_log.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_complex_log_e";

   function gsl_sf_log_1plusx_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_log.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_log_1plusx_e";

   function gsl_sf_log_1plusx (x : double) return double  -- /usr/include/gsl/gsl_sf_log.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_log_1plusx";

   function gsl_sf_log_1plusx_mx_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_log.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_log_1plusx_mx_e";

   function gsl_sf_log_1plusx_mx (x : double) return double  -- /usr/include/gsl/gsl_sf_log.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_log_1plusx_mx";

end GSL.Low_Level.gsl_gsl_sf_log_h;
