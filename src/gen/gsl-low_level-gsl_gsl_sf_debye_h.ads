pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_debye_h is

   function gsl_sf_debye_1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_debye.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_1_e";

   function gsl_sf_debye_1 (x : double) return double  -- /usr/include/gsl/gsl_sf_debye.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_1";

   function gsl_sf_debye_2_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_debye.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_2_e";

   function gsl_sf_debye_2 (x : double) return double  -- /usr/include/gsl/gsl_sf_debye.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_2";

   function gsl_sf_debye_3_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_debye.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_3_e";

   function gsl_sf_debye_3 (x : double) return double  -- /usr/include/gsl/gsl_sf_debye.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_3";

   function gsl_sf_debye_4_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_debye.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_4_e";

   function gsl_sf_debye_4 (x : double) return double  -- /usr/include/gsl/gsl_sf_debye.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_4";

   function gsl_sf_debye_5_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_debye.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_5_e";

   function gsl_sf_debye_5 (x : double) return double  -- /usr/include/gsl/gsl_sf_debye.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_5";

   function gsl_sf_debye_6_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_debye.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_6_e";

   function gsl_sf_debye_6 (x : double) return double  -- /usr/include/gsl/gsl_sf_debye.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_debye_6";

end GSL.Low_Level.gsl_gsl_sf_debye_h;
