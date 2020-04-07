pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_mode_h;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_airy_h is

   function gsl_sf_airy_Ai_e
     (x : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Ai_e";

   function gsl_sf_airy_Ai (x : double; mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_airy.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Ai";

   function gsl_sf_airy_Bi_e
     (x : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Bi_e";

   function gsl_sf_airy_Bi (x : double; mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_airy.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Bi";

   function gsl_sf_airy_Ai_scaled_e
     (x : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Ai_scaled_e";

   function gsl_sf_airy_Ai_scaled (x : double; mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_airy.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Ai_scaled";

   function gsl_sf_airy_Bi_scaled_e
     (x : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Bi_scaled_e";

   function gsl_sf_airy_Bi_scaled (x : double; mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_airy.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Bi_scaled";

   function gsl_sf_airy_Ai_deriv_e
     (x : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Ai_deriv_e";

   function gsl_sf_airy_Ai_deriv (x : double; mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_airy.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Ai_deriv";

   function gsl_sf_airy_Bi_deriv_e
     (x : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Bi_deriv_e";

   function gsl_sf_airy_Bi_deriv (x : double; mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_airy.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Bi_deriv";

   function gsl_sf_airy_Ai_deriv_scaled_e
     (x : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Ai_deriv_scaled_e";

   function gsl_sf_airy_Ai_deriv_scaled (x : double; mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_airy.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Ai_deriv_scaled";

   function gsl_sf_airy_Bi_deriv_scaled_e
     (x : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Bi_deriv_scaled_e";

   function gsl_sf_airy_Bi_deriv_scaled (x : double; mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_airy.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_Bi_deriv_scaled";

   function gsl_sf_airy_zero_Ai_e (s : unsigned; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_zero_Ai_e";

   function gsl_sf_airy_zero_Ai (s : unsigned) return double  -- /usr/include/gsl/gsl_sf_airy.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_zero_Ai";

   function gsl_sf_airy_zero_Bi_e (s : unsigned; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_zero_Bi_e";

   function gsl_sf_airy_zero_Bi (s : unsigned) return double  -- /usr/include/gsl/gsl_sf_airy.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_zero_Bi";

   function gsl_sf_airy_zero_Ai_deriv_e (s : unsigned; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_zero_Ai_deriv_e";

   function gsl_sf_airy_zero_Ai_deriv (s : unsigned) return double  -- /usr/include/gsl/gsl_sf_airy.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_zero_Ai_deriv";

   function gsl_sf_airy_zero_Bi_deriv_e (s : unsigned; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_airy.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_zero_Bi_deriv_e";

   function gsl_sf_airy_zero_Bi_deriv (s : unsigned) return double  -- /usr/include/gsl/gsl_sf_airy.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_airy_zero_Bi_deriv";

end GSL.Low_Level.gsl_gsl_sf_airy_h;
