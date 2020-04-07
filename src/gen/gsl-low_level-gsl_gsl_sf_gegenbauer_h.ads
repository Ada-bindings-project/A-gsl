pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_gegenbauer_h is

   function gsl_sf_gegenpoly_1_e
     (lambda : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gegenbauer.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gegenpoly_1_e";

   function gsl_sf_gegenpoly_2_e
     (lambda : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gegenbauer.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gegenpoly_2_e";

   function gsl_sf_gegenpoly_3_e
     (lambda : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gegenbauer.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gegenpoly_3_e";

   function gsl_sf_gegenpoly_1 (lambda : double; x : double) return double  -- /usr/include/gsl/gsl_sf_gegenbauer.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gegenpoly_1";

   function gsl_sf_gegenpoly_2 (lambda : double; x : double) return double  -- /usr/include/gsl/gsl_sf_gegenbauer.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gegenpoly_2";

   function gsl_sf_gegenpoly_3 (lambda : double; x : double) return double  -- /usr/include/gsl/gsl_sf_gegenbauer.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gegenpoly_3";

   function gsl_sf_gegenpoly_n_e
     (n : int;
      lambda : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gegenbauer.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gegenpoly_n_e";

   function gsl_sf_gegenpoly_n
     (n : int;
      lambda : double;
      x : double) return double  -- /usr/include/gsl/gsl_sf_gegenbauer.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gegenpoly_n";

   function gsl_sf_gegenpoly_array
     (nmax : int;
      lambda : double;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_gegenbauer.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gegenpoly_array";

end GSL.Low_Level.gsl_gsl_sf_gegenbauer_h;
