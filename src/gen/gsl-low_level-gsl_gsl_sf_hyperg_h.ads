pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_hyperg_h is

   function gsl_sf_hyperg_0F1_e
     (c : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hyperg.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_0F1_e";

   function gsl_sf_hyperg_0F1 (c : double; x : double) return double  -- /usr/include/gsl/gsl_sf_hyperg.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_0F1";

   function gsl_sf_hyperg_1F1_int_e
     (m : int;
      n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hyperg.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_1F1_int_e";

   function gsl_sf_hyperg_1F1_int
     (m : int;
      n : int;
      x : double) return double  -- /usr/include/gsl/gsl_sf_hyperg.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_1F1_int";

   function gsl_sf_hyperg_1F1_e
     (a : double;
      b : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hyperg.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_1F1_e";

   function gsl_sf_hyperg_1F1
     (a : double;
      b : double;
      x : double) return double  -- /usr/include/gsl/gsl_sf_hyperg.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_1F1";

   function gsl_sf_hyperg_U_int_e
     (m : int;
      n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hyperg.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_U_int_e";

   function gsl_sf_hyperg_U_int
     (m : int;
      n : int;
      x : double) return double  -- /usr/include/gsl/gsl_sf_hyperg.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_U_int";

   function gsl_sf_hyperg_U_int_e10_e
     (m : int;
      n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result_e10) return int  -- /usr/include/gsl/gsl_sf_hyperg.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_U_int_e10_e";

   function gsl_sf_hyperg_U_e
     (a : double;
      b : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hyperg.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_U_e";

   function gsl_sf_hyperg_U
     (a : double;
      b : double;
      x : double) return double  -- /usr/include/gsl/gsl_sf_hyperg.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_U";

   function gsl_sf_hyperg_U_e10_e
     (a : double;
      b : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result_e10) return int  -- /usr/include/gsl/gsl_sf_hyperg.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_U_e10_e";

   function gsl_sf_hyperg_2F1_e
     (a : double;
      b : double;
      c : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hyperg.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_2F1_e";

   function gsl_sf_hyperg_2F1
     (a : double;
      b : double;
      c : double;
      x : double) return double  -- /usr/include/gsl/gsl_sf_hyperg.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_2F1";

   function gsl_sf_hyperg_2F1_conj_e
     (aR : double;
      aI : double;
      c : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hyperg.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_2F1_conj_e";

   function gsl_sf_hyperg_2F1_conj
     (aR : double;
      aI : double;
      c : double;
      x : double) return double  -- /usr/include/gsl/gsl_sf_hyperg.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_2F1_conj";

   function gsl_sf_hyperg_2F1_renorm_e
     (a : double;
      b : double;
      c : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hyperg.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_2F1_renorm_e";

   function gsl_sf_hyperg_2F1_renorm
     (a : double;
      b : double;
      c : double;
      x : double) return double  -- /usr/include/gsl/gsl_sf_hyperg.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_2F1_renorm";

   function gsl_sf_hyperg_2F1_conj_renorm_e
     (aR : double;
      aI : double;
      c : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hyperg.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_2F1_conj_renorm_e";

   function gsl_sf_hyperg_2F1_conj_renorm
     (aR : double;
      aI : double;
      c : double;
      x : double) return double  -- /usr/include/gsl/gsl_sf_hyperg.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_2F1_conj_renorm";

   function gsl_sf_hyperg_2F0_e
     (a : double;
      b : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hyperg.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_2F0_e";

   function gsl_sf_hyperg_2F0
     (a : double;
      b : double;
      x : double) return double  -- /usr/include/gsl/gsl_sf_hyperg.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_2F0";

end GSL.Low_Level.gsl_gsl_sf_hyperg_h;
