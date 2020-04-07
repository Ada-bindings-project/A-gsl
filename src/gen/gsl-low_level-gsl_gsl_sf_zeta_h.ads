pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_zeta_h is

   function gsl_sf_zeta_int_e (n : int; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_zeta.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_zeta_int_e";

   function gsl_sf_zeta_int (n : int) return double  -- /usr/include/gsl/gsl_sf_zeta.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_zeta_int";

   function gsl_sf_zeta_e (s : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_zeta.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_zeta_e";

   function gsl_sf_zeta (s : double) return double  -- /usr/include/gsl/gsl_sf_zeta.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_zeta";

   function gsl_sf_zetam1_e (s : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_zeta.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_zetam1_e";

   function gsl_sf_zetam1 (s : double) return double  -- /usr/include/gsl/gsl_sf_zeta.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_zetam1";

   function gsl_sf_zetam1_int_e (s : int; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_zeta.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_zetam1_int_e";

   function gsl_sf_zetam1_int (s : int) return double  -- /usr/include/gsl/gsl_sf_zeta.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_zetam1_int";

   function gsl_sf_hzeta_e
     (s : double;
      q : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_zeta.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hzeta_e";

   function gsl_sf_hzeta (s : double; q : double) return double  -- /usr/include/gsl/gsl_sf_zeta.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hzeta";

   function gsl_sf_eta_int_e (n : int; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_zeta.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_eta_int_e";

   function gsl_sf_eta_int (n : int) return double  -- /usr/include/gsl/gsl_sf_zeta.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_eta_int";

   function gsl_sf_eta_e (s : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_zeta.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_eta_e";

   function gsl_sf_eta (s : double) return double  -- /usr/include/gsl/gsl_sf_zeta.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_eta";

end GSL.Low_Level.gsl_gsl_sf_zeta_h;
