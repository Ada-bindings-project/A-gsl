pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_mode_h;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_ellint_h is

  -- specfunc/gsl_sf_ellint.h
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

  -- Author: G. Jungman  
  -- Legendre form of complete elliptic integrals
  -- *
  -- * K(k) = Integral[1/Sqrt[1 - k^2 Sin[t]^2], {t, 0, Pi/2}]
  -- * E(k) = Integral[  Sqrt[1 - k^2 Sin[t]^2], {t, 0, Pi/2}]
  -- *
  -- * exceptions: GSL_EDOM
  --  

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

  -- Legendre form of incomplete elliptic integrals
  -- *
  -- * F(phi,k)   = Integral[1/Sqrt[1 - k^2 Sin[t]^2], {t, 0, phi}]
  -- * E(phi,k)   = Integral[  Sqrt[1 - k^2 Sin[t]^2], {t, 0, phi}]
  -- * P(phi,k,n) = Integral[(1 + n Sin[t]^2)^(-1)/Sqrt[1 - k^2 Sin[t]^2], {t, 0, phi}]
  -- * D(phi,k,n) = R_D(1-Sin[phi]^2, 1-k^2 Sin[phi]^2, 1.0)
  -- *
  -- * F: [Carlson, Numerische Mathematik 33 (1979) 1, (4.1)]
  -- * E: [Carlson, ", (4.2)]
  -- * P: [Carlson, ", (4.3)]
  -- * D: [Carlson, ", (4.4)]
  -- *
  -- * exceptions: GSL_EDOM
  --  

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

  -- Carlson's symmetric basis of functions
  -- *
  -- * RC(x,y)   = 1/2 Integral[(t+x)^(-1/2) (t+y)^(-1)], {t,0,Inf}]
  -- * RD(x,y,z) = 3/2 Integral[(t+x)^(-1/2) (t+y)^(-1/2) (t+z)^(-3/2), {t,0,Inf}]
  -- * RF(x,y,z) = 1/2 Integral[(t+x)^(-1/2) (t+y)^(-1/2) (t+z)^(-1/2), {t,0,Inf}]
  -- * RJ(x,y,z,p) = 3/2 Integral[(t+x)^(-1/2) (t+y)^(-1/2) (t+z)^(-1/2) (t+p)^(-1), {t,0,Inf}]
  -- *
  -- * exceptions: GSL_EDOM
  --  

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
