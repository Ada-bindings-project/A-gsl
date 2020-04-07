pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_coulomb_h is

  -- specfunc/gsl_sf_coulomb.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000 Gerard Jungman
  -- * 
  -- * This program is free software; you can redistribute it and/or modify
  -- * it under the terms of the GNU General Public License as published by
  -- * the Free Software Foundation; either version 3 of the License, or (at
  -- * your option) any later version.
  -- * 
  -- * This program is distributed in the hope that it will be useful, but
  -- * WITHOUT ANY WARRANTY; without even the implied warranty of
  -- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  -- * General Public License for more details.
  -- * 
  -- * You should have received a copy of the GNU General Public License
  -- * along with this program; if not, write to the Free Software
  -- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
  --  

  -- Author:  G. Jungman  
  -- Normalized hydrogenic bound states, radial dependence.  
  -- R_1 := 2Z sqrt(Z) exp(-Z r)
  --  

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

  -- R_n := norm exp(-Z r/n) (2Z/n)^l Laguerre[n-l-1, 2l+1, 2Z/n r]
  -- *
  -- * normalization such that psi(n,l,r) = R_n Y_{lm}
  --  

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

  -- Coulomb wave functions F_{lam_F}(eta,x), G_{lam_G}(eta,x)
  -- * and their derivatives; lam_G := lam_F - k_lam_G
  -- *
  -- * lam_F, lam_G > -0.5
  -- * x > 0.0
  -- *
  -- * Conventions of Abramowitz+Stegun.
  -- *
  -- * Because there can be a large dynamic range of values,
  -- * overflows are handled gracefully. If an overflow occurs,
  -- * GSL_EOVRFLW is signalled and exponent(s) are returned
  -- * through exp_F, exp_G. These are such that
  -- *
  -- *   F_L(eta,x)  =  fc[k_L] * exp(exp_F)
  -- *   G_L(eta,x)  =  gc[k_L] * exp(exp_G)
  -- *   F_L'(eta,x) = fcp[k_L] * exp(exp_F)
  -- *   G_L'(eta,x) = gcp[k_L] * exp(exp_G)
  --  

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

  -- F_L(eta,x) as array  
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

  -- F_L(eta,x), G_L(eta,x) as arrays  
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

  -- F_L(eta,x), G_L(eta,x), F'_L(eta,x), G'_L(eta,x) as arrays  
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

  -- Coulomb wave function divided by the argument,
  -- * F(eta, x)/x. This is the function which reduces to
  -- * spherical Bessel functions in the limit eta->0.
  --  

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

  -- Coulomb wave function normalization constant.
  -- * [Abramowitz+Stegun 14.1.8, 14.1.9]
  --  

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
