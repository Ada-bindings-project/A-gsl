pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_clausen_h is

   function gsl_sf_clausen_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_clausen.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_clausen_e";

   function gsl_sf_clausen (x : double) return double  -- /usr/include/gsl/gsl_sf_clausen.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_clausen";

end GSL.Low_Level.gsl_gsl_sf_clausen_h;
