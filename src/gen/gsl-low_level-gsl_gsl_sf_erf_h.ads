pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_erf_h is

   function gsl_sf_erfc_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_erf.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_erfc_e";

   function gsl_sf_erfc (x : double) return double  -- /usr/include/gsl/gsl_sf_erf.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_erfc";

   function gsl_sf_log_erfc_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_erf.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_log_erfc_e";

   function gsl_sf_log_erfc (x : double) return double  -- /usr/include/gsl/gsl_sf_erf.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_log_erfc";

   function gsl_sf_erf_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_erf.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_erf_e";

   function gsl_sf_erf (x : double) return double  -- /usr/include/gsl/gsl_sf_erf.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_erf";

   function gsl_sf_erf_Z_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_erf.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_erf_Z_e";

   function gsl_sf_erf_Q_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_erf.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_erf_Q_e";

   function gsl_sf_erf_Z (x : double) return double  -- /usr/include/gsl/gsl_sf_erf.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_erf_Z";

   function gsl_sf_erf_Q (x : double) return double  -- /usr/include/gsl/gsl_sf_erf.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_erf_Q";

   function gsl_sf_hazard_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_erf.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hazard_e";

   function gsl_sf_hazard (x : double) return double  -- /usr/include/gsl/gsl_sf_erf.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hazard";

end GSL.Low_Level.gsl_gsl_sf_erf_h;
