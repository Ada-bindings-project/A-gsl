pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_coulomb_h is

   function gsl_sf_hydrogenicR_1_e
     (Z : double;
      r : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_coulomb.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hydrogenicR_1_e";

   function gsl_sf_hydrogenicR_1 (Z : double; r : double) return double  -- /usr/include/gsl/gsl_sf_coulomb.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hydrogenicR_1";

   function gsl_sf_hydrogenicR_e
     (n : int;
      l : int;
      Z : double;
      r : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_coulomb.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hydrogenicR_e";

   function gsl_sf_hydrogenicR
     (n : int;
      l : int;
      Z : double;
      r : double) return double  -- /usr/include/gsl/gsl_sf_coulomb.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hydrogenicR";

   function gsl_sf_coulomb_wave_FG_e
     (eta : double;
      x : double;
      lam_F : double;
      k_lam_G : int;
      F : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      Fp : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      G : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      Gp : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      exp_F : access double;
      exp_G : access double) return int  -- /usr/include/gsl/gsl_sf_coulomb.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coulomb_wave_FG_e";

   function gsl_sf_coulomb_wave_F_array
     (lam_min : double;
      kmax : int;
      eta : double;
      x : double;
      fc_array : access double;
      F_exponent : access double) return int  -- /usr/include/gsl/gsl_sf_coulomb.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coulomb_wave_F_array";

   function gsl_sf_coulomb_wave_FG_array
     (lam_min : double;
      kmax : int;
      eta : double;
      x : double;
      fc_array : access double;
      gc_array : access double;
      F_exponent : access double;
      G_exponent : access double) return int  -- /usr/include/gsl/gsl_sf_coulomb.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coulomb_wave_FG_array";

   function gsl_sf_coulomb_wave_FGp_array
     (lam_min : double;
      kmax : int;
      eta : double;
      x : double;
      fc_array : access double;
      fcp_array : access double;
      gc_array : access double;
      gcp_array : access double;
      F_exponent : access double;
      G_exponent : access double) return int  -- /usr/include/gsl/gsl_sf_coulomb.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coulomb_wave_FGp_array";

   function gsl_sf_coulomb_wave_sphF_array
     (lam_min : double;
      kmax : int;
      eta : double;
      x : double;
      fc_array : access double;
      F_exponent : access double) return int  -- /usr/include/gsl/gsl_sf_coulomb.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coulomb_wave_sphF_array";

   function gsl_sf_coulomb_CL_e
     (L : double;
      eta : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_coulomb.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coulomb_CL_e";

   function gsl_sf_coulomb_CL_array
     (Lmin : double;
      kmax : int;
      eta : double;
      cl : access double) return int  -- /usr/include/gsl/gsl_sf_coulomb.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coulomb_CL_array";

end GSL.Low_Level.gsl_gsl_sf_coulomb_h;
