pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_transport_h is

   function gsl_sf_transport_2_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_transport.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_transport_2_e";

   function gsl_sf_transport_2 (x : double) return double  -- /usr/include/gsl/gsl_sf_transport.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_transport_2";

   function gsl_sf_transport_3_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_transport.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_transport_3_e";

   function gsl_sf_transport_3 (x : double) return double  -- /usr/include/gsl/gsl_sf_transport.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_transport_3";

   function gsl_sf_transport_4_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_transport.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_transport_4_e";

   function gsl_sf_transport_4 (x : double) return double  -- /usr/include/gsl/gsl_sf_transport.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_transport_4";

   function gsl_sf_transport_5_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_transport.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_transport_5_e";

   function gsl_sf_transport_5 (x : double) return double  -- /usr/include/gsl/gsl_sf_transport.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_transport_5";

end GSL.Low_Level.gsl_gsl_sf_transport_h;
