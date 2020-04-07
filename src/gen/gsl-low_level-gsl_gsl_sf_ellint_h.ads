pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_mode_h;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_ellint_h is

   function gsl_sf_ellint_Kcomp_e
     (k : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_ellint.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_Kcomp_e";

   function gsl_sf_ellint_Kcomp (k : double; mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_ellint.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_Kcomp";

   function gsl_sf_ellint_Ecomp_e
     (k : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_ellint.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_Ecomp_e";

   function gsl_sf_ellint_Ecomp (k : double; mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_ellint.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_Ecomp";

   function gsl_sf_ellint_Pcomp_e
     (k : double;
      n : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_ellint.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_Pcomp_e";

   function gsl_sf_ellint_Pcomp
     (k : double;
      n : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_ellint.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_Pcomp";

   function gsl_sf_ellint_Dcomp_e
     (k : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_ellint.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_Dcomp_e";

   function gsl_sf_ellint_Dcomp (k : double; mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_ellint.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_Dcomp";

   function gsl_sf_ellint_F_e
     (phi : double;
      k : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_ellint.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_F_e";

   function gsl_sf_ellint_F
     (phi : double;
      k : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_ellint.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_F";

   function gsl_sf_ellint_E_e
     (phi : double;
      k : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_ellint.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_E_e";

   function gsl_sf_ellint_E
     (phi : double;
      k : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_ellint.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_E";

   function gsl_sf_ellint_P_e
     (phi : double;
      k : double;
      n : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_ellint.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_P_e";

   function gsl_sf_ellint_P
     (phi : double;
      k : double;
      n : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_ellint.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_P";

   function gsl_sf_ellint_D_e
     (phi : double;
      k : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_ellint.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_D_e";

   function gsl_sf_ellint_D
     (phi : double;
      k : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_ellint.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_D";

   function gsl_sf_ellint_RC_e
     (x : double;
      y : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_ellint.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_RC_e";

   function gsl_sf_ellint_RC
     (x : double;
      y : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_ellint.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_RC";

   function gsl_sf_ellint_RD_e
     (x : double;
      y : double;
      z : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_ellint.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_RD_e";

   function gsl_sf_ellint_RD
     (x : double;
      y : double;
      z : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_ellint.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_RD";

   function gsl_sf_ellint_RF_e
     (x : double;
      y : double;
      z : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_ellint.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_RF_e";

   function gsl_sf_ellint_RF
     (x : double;
      y : double;
      z : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_ellint.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_RF";

   function gsl_sf_ellint_RJ_e
     (x : double;
      y : double;
      z : double;
      p : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_ellint.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_RJ_e";

   function gsl_sf_ellint_RJ
     (x : double;
      y : double;
      z : double;
      p : double;
      mode : GSL.Low_Level.gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_sf_ellint.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_ellint_RJ";

end GSL.Low_Level.gsl_gsl_sf_ellint_h;
