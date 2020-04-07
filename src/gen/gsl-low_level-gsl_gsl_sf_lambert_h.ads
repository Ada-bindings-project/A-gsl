pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_lambert_h is

   function gsl_sf_lambert_W0_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_lambert.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lambert_W0_e";

   function gsl_sf_lambert_W0 (x : double) return double  -- /usr/include/gsl/gsl_sf_lambert.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lambert_W0";

   function gsl_sf_lambert_Wm1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_lambert.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lambert_Wm1_e";

   function gsl_sf_lambert_Wm1 (x : double) return double  -- /usr/include/gsl/gsl_sf_lambert.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lambert_Wm1";

end GSL.Low_Level.gsl_gsl_sf_lambert_h;
