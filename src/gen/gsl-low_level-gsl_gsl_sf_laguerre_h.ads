pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_laguerre_h is

   function gsl_sf_laguerre_1_e
     (a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_laguerre.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_laguerre_1_e";

   function gsl_sf_laguerre_2_e
     (a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_laguerre.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_laguerre_2_e";

   function gsl_sf_laguerre_3_e
     (a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_laguerre.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_laguerre_3_e";

   function gsl_sf_laguerre_1 (a : double; x : double) return double  -- /usr/include/gsl/gsl_sf_laguerre.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_laguerre_1";

   function gsl_sf_laguerre_2 (a : double; x : double) return double  -- /usr/include/gsl/gsl_sf_laguerre.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_laguerre_2";

   function gsl_sf_laguerre_3 (a : double; x : double) return double  -- /usr/include/gsl/gsl_sf_laguerre.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_laguerre_3";

   function gsl_sf_laguerre_n_e
     (n : int;
      a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_laguerre.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_laguerre_n_e";

   function gsl_sf_laguerre_n
     (n : int;
      a : double;
      x : double) return double  -- /usr/include/gsl/gsl_sf_laguerre.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_laguerre_n";

end GSL.Low_Level.gsl_gsl_sf_laguerre_h;
