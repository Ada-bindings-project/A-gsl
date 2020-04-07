pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_synchrotron_h is

   function gsl_sf_synchrotron_1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_synchrotron.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_synchrotron_1_e";

   function gsl_sf_synchrotron_1 (x : double) return double  -- /usr/include/gsl/gsl_sf_synchrotron.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_synchrotron_1";

   function gsl_sf_synchrotron_2_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_synchrotron.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_synchrotron_2_e";

   function gsl_sf_synchrotron_2 (x : double) return double  -- /usr/include/gsl/gsl_sf_synchrotron.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_synchrotron_2";

end GSL.Low_Level.gsl_gsl_sf_synchrotron_h;
