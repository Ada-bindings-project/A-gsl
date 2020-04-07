pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_expint_h is

   function gsl_sf_expint_E1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_E1_e";

   function gsl_sf_expint_E1 (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_E1";

   function gsl_sf_expint_E2_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_E2_e";

   function gsl_sf_expint_E2 (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_E2";

   function gsl_sf_expint_En_e
     (n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_En_e";

   function gsl_sf_expint_En (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_En";

   function gsl_sf_expint_E1_scaled_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_E1_scaled_e";

   function gsl_sf_expint_E1_scaled (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_E1_scaled";

   function gsl_sf_expint_E2_scaled_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_E2_scaled_e";

   function gsl_sf_expint_E2_scaled (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_E2_scaled";

   function gsl_sf_expint_En_scaled_e
     (n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_En_scaled_e";

   function gsl_sf_expint_En_scaled (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_En_scaled";

   function gsl_sf_expint_Ei_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_Ei_e";

   function gsl_sf_expint_Ei (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_Ei";

   function gsl_sf_expint_Ei_scaled_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_Ei_scaled_e";

   function gsl_sf_expint_Ei_scaled (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_Ei_scaled";

   function gsl_sf_Shi_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_Shi_e";

   function gsl_sf_Shi (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_Shi";

   function gsl_sf_Chi_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_Chi_e";

   function gsl_sf_Chi (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_Chi";

   function gsl_sf_expint_3_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_3_e";

   function gsl_sf_expint_3 (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_3";

   function gsl_sf_Si_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_Si_e";

   function gsl_sf_Si (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_Si";

   function gsl_sf_Ci_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_Ci_e";

   function gsl_sf_Ci (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_Ci";

   function gsl_sf_atanint_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_atanint_e";

   function gsl_sf_atanint (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_atanint";

end GSL.Low_Level.gsl_gsl_sf_expint_h;
