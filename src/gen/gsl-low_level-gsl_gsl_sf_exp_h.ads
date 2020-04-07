pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_exp_h is

   function gsl_sf_exp_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_exp.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exp_e";

   function gsl_sf_exp (x : double) return double  -- /usr/include/gsl/gsl_sf_exp.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exp";

   function gsl_sf_exp_e10_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result_e10) return int  -- /usr/include/gsl/gsl_sf_exp.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exp_e10_e";

   function gsl_sf_exp_mult_e
     (x : double;
      y : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_exp.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exp_mult_e";

   function gsl_sf_exp_mult (x : double; y : double) return double  -- /usr/include/gsl/gsl_sf_exp.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exp_mult";

   function gsl_sf_exp_mult_e10_e
     (x : double;
      y : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result_e10) return int  -- /usr/include/gsl/gsl_sf_exp.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exp_mult_e10_e";

   function gsl_sf_expm1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_exp.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expm1_e";

   function gsl_sf_expm1 (x : double) return double  -- /usr/include/gsl/gsl_sf_exp.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expm1";

   function gsl_sf_exprel_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_exp.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exprel_e";

   function gsl_sf_exprel (x : double) return double  -- /usr/include/gsl/gsl_sf_exp.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exprel";

   function gsl_sf_exprel_2_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_exp.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exprel_2_e";

   function gsl_sf_exprel_2 (x : double) return double  -- /usr/include/gsl/gsl_sf_exp.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exprel_2";

   function gsl_sf_exprel_n_e
     (n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_exp.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exprel_n_e";

   function gsl_sf_exprel_n (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_exp.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exprel_n";

   function gsl_sf_exprel_n_CF_e
     (n : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_exp.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exprel_n_CF_e";

   function gsl_sf_exp_err_e
     (x : double;
      dx : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_exp.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exp_err_e";

   function gsl_sf_exp_err_e10_e
     (x : double;
      dx : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result_e10) return int  -- /usr/include/gsl/gsl_sf_exp.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exp_err_e10_e";

   function gsl_sf_exp_mult_err_e
     (x : double;
      dx : double;
      y : double;
      dy : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_exp.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exp_mult_err_e";

   function gsl_sf_exp_mult_err_e10_e
     (x : double;
      dx : double;
      y : double;
      dy : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result_e10) return int  -- /usr/include/gsl/gsl_sf_exp.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exp_mult_err_e10_e";

end GSL.Low_Level.gsl_gsl_sf_exp_h;
