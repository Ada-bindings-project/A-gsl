pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_pow_int_h is

   function gsl_sf_pow_int_e
     (x : double;
      n : int;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_pow_int.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_pow_int_e";

   function gsl_sf_pow_int (x : double; n : int) return double  -- /usr/include/gsl/gsl_sf_pow_int.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_pow_int";

end GSL.Low_Level.gsl_gsl_sf_pow_int_h;
