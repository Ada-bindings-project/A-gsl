pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_fermi_dirac_h is

   function gsl_sf_fermi_dirac_m1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_m1_e";

   function gsl_sf_fermi_dirac_m1 (x : double) return double  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_m1";

   function gsl_sf_fermi_dirac_0_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_0_e";

   function gsl_sf_fermi_dirac_0 (x : double) return double  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_0";

   function gsl_sf_fermi_dirac_1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_1_e";

   function gsl_sf_fermi_dirac_1 (x : double) return double  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_1";

   function gsl_sf_fermi_dirac_2_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_2_e";

   function gsl_sf_fermi_dirac_2 (x : double) return double  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_2";

   function gsl_sf_fermi_dirac_int_e
     (j : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_int_e";

   function gsl_sf_fermi_dirac_int (j : int; x : double) return double  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_int";

   function gsl_sf_fermi_dirac_mhalf_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_mhalf_e";

   function gsl_sf_fermi_dirac_mhalf (x : double) return double  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_mhalf";

   function gsl_sf_fermi_dirac_half_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_half_e";

   function gsl_sf_fermi_dirac_half (x : double) return double  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_half";

   function gsl_sf_fermi_dirac_3half_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_3half_e";

   function gsl_sf_fermi_dirac_3half (x : double) return double  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_3half";

   function gsl_sf_fermi_dirac_inc_0_e
     (x : double;
      b : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_inc_0_e";

   function gsl_sf_fermi_dirac_inc_0 (x : double; b : double) return double  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_inc_0";

end GSL.Low_Level.gsl_gsl_sf_fermi_dirac_h;
