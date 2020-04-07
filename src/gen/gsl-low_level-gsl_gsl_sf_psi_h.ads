pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_psi_h is

   function gsl_sf_psi_int_e (n : int; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_psi.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_int_e";

   function gsl_sf_psi_int (n : int) return double  -- /usr/include/gsl/gsl_sf_psi.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_int";

   function gsl_sf_psi_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_psi.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_e";

   function gsl_sf_psi (x : double) return double  -- /usr/include/gsl/gsl_sf_psi.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi";

   function gsl_sf_psi_1piy_e (y : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_psi.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_1piy_e";

   function gsl_sf_psi_1piy (y : double) return double  -- /usr/include/gsl/gsl_sf_psi.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_1piy";

   function gsl_sf_complex_psi_e
     (x : double;
      y : double;
      result_re : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      result_im : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_psi.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_complex_psi_e";

   function gsl_sf_psi_1_int_e (n : int; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_psi.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_1_int_e";

   function gsl_sf_psi_1_int (n : int) return double  -- /usr/include/gsl/gsl_sf_psi.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_1_int";

   function gsl_sf_psi_1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_psi.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_1_e";

   function gsl_sf_psi_1 (x : double) return double  -- /usr/include/gsl/gsl_sf_psi.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_1";

   function gsl_sf_psi_n_e
     (n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_psi.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_n_e";

   function gsl_sf_psi_n (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_psi.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_n";

end GSL.Low_Level.gsl_gsl_sf_psi_h;
