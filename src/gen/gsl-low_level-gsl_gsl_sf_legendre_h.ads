pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;


package GSL.Low_Level.gsl_gsl_sf_legendre_h is

  -- specfunc/gsl_sf_legendre.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2004 Gerard Jungman
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
  -- P_l(x)   l >= 0; |x| <= 1
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_legendre_Pl_e
     (l : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Pl_e";

   function gsl_sf_legendre_Pl (l : int; x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Pl";

  -- P_l(x) for l=0,...,lmax; |x| <= 1
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_legendre_Pl_array
     (lmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Pl_array";

  -- P_l(x) and P_l'(x) for l=0,...,lmax; |x| <= 1
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_legendre_Pl_deriv_array
     (lmax : int;
      x : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Pl_deriv_array";

  -- P_l(x), l=1,2,3
  -- *
  -- * exceptions: none
  --  

   function gsl_sf_legendre_P1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_P1_e";

   function gsl_sf_legendre_P2_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_P2_e";

   function gsl_sf_legendre_P3_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_P3_e";

   function gsl_sf_legendre_P1 (x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_P1";

   function gsl_sf_legendre_P2 (x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_P2";

   function gsl_sf_legendre_P3 (x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_P3";

  -- Q_0(x), x > -1, x != 1
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_legendre_Q0_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Q0_e";

   function gsl_sf_legendre_Q0 (x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Q0";

  -- Q_1(x), x > -1, x != 1
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_legendre_Q1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Q1_e";

   function gsl_sf_legendre_Q1 (x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Q1";

  -- Q_l(x), x > -1, x != 1, l >= 0
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_legendre_Ql_e
     (l : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Ql_e";

   function gsl_sf_legendre_Ql (l : int; x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Ql";

  -- P_l^m(x)  m >= 0; l >= m; |x| <= 1.0
  -- *
  -- * Note that this function grows combinatorially with l.
  -- * Therefore we can easily generate an overflow for l larger
  -- * than about 150.
  -- *
  -- * There is no trouble for small m, but when m and l are both large,
  -- * then there will be trouble. Rather than allow overflows, these
  -- * functions refuse to calculate when they can sense that l and m are
  -- * too big.
  -- *
  -- * If you really want to calculate a spherical harmonic, then DO NOT
  -- * use this. Instead use legendre_sphPlm() below, which  uses a similar
  -- * recursion, but with the normalized functions.
  -- *
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW
  --  

   function gsl_sf_legendre_Plm_e
     (l : int;
      m : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Plm_e";

   function gsl_sf_legendre_Plm
     (l : int;
      m : int;
      x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Plm";

  -- P_l^m(x)  m >= 0; l >= m; |x| <= 1.0
  -- * l=|m|,...,lmax
  -- *
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW
  --  

   function gsl_sf_legendre_Plm_array
     (lmax : int;
      m : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Plm_array";

  -- P_l^m(x)  and d(P_l^m(x))/dx;  m >= 0; lmax >= m; |x| <= 1.0
  -- * l=|m|,...,lmax
  -- *
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW
  --  

   function gsl_sf_legendre_Plm_deriv_array
     (lmax : int;
      m : int;
      x : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Plm_deriv_array";

  -- P_l^m(x), normalized properly for use in spherical harmonics
  -- * m >= 0; l >= m; |x| <= 1.0
  -- *
  -- * There is no overflow problem, as there is for the
  -- * standard normalization of P_l^m(x).
  -- *
  -- * Specifically, it returns:
  -- *
  -- *        sqrt((2l+1)/(4pi)) sqrt((l-m)!/(l+m)!) P_l^m(x)
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_legendre_sphPlm_e
     (l : int;
      m : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_sphPlm_e";

   function gsl_sf_legendre_sphPlm
     (l : int;
      m : int;
      x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_sphPlm";

  -- sphPlm(l,m,x) values
  -- * m >= 0; l >= m; |x| <= 1.0
  -- * l=|m|,...,lmax
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_legendre_sphPlm_array
     (lmax : int;
      m : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_sphPlm_array";

  -- sphPlm(l,m,x) and d(sphPlm(l,m,x))/dx values
  -- * m >= 0; l >= m; |x| <= 1.0
  -- * l=|m|,...,lmax
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_legendre_sphPlm_deriv_array
     (lmax : int;
      m : int;
      x : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_sphPlm_deriv_array";

  -- size of result_array[] needed for the array versions of Plm
  -- * (lmax - m + 1)
  --  

   function gsl_sf_legendre_array_size (lmax : int; m : int) return int  -- /usr/include/gsl/gsl_sf_legendre.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_array_size";

  -- Irregular Spherical Conical Function
  -- * P^{1/2}_{-1/2 + I lambda}(x)
  -- *
  -- * x > -1.0
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_conicalP_half_e
     (lambda : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_half_e";

   function gsl_sf_conicalP_half (lambda : double; x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_half";

  -- Regular Spherical Conical Function
  -- * P^{-1/2}_{-1/2 + I lambda}(x)
  -- *
  -- * x > -1.0
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_conicalP_mhalf_e
     (lambda : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_mhalf_e";

   function gsl_sf_conicalP_mhalf (lambda : double; x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_mhalf";

  -- Conical Function
  -- * P^{0}_{-1/2 + I lambda}(x)
  -- *
  -- * x > -1.0
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_conicalP_0_e
     (lambda : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_0_e";

   function gsl_sf_conicalP_0 (lambda : double; x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_0";

  -- Conical Function
  -- * P^{1}_{-1/2 + I lambda}(x)
  -- *
  -- * x > -1.0
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_conicalP_1_e
     (lambda : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_1_e";

   function gsl_sf_conicalP_1 (lambda : double; x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_1";

  -- Regular Spherical Conical Function
  -- * P^{-1/2-l}_{-1/2 + I lambda}(x)
  -- *
  -- * x > -1.0, l >= -1
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_conicalP_sph_reg_e
     (l : int;
      lambda : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:242
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_sph_reg_e";

   function gsl_sf_conicalP_sph_reg
     (l : int;
      lambda : double;
      x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_sph_reg";

  -- Regular Cylindrical Conical Function
  -- * P^{-m}_{-1/2 + I lambda}(x)
  -- *
  -- * x > -1.0, m >= -1
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_conicalP_cyl_reg_e
     (m : int;
      lambda : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_cyl_reg_e";

   function gsl_sf_conicalP_cyl_reg
     (m : int;
      lambda : double;
      x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_cyl_reg";

  -- The following spherical functions are specializations
  -- * of Legendre functions which give the regular eigenfunctions
  -- * of the Laplacian on a 3-dimensional hyperbolic space.
  -- * Of particular interest is the flat limit, which is
  -- * Flat-Lim := {lambda->Inf, eta->0, lambda*eta fixed}.
  --  

  -- Zeroth radial eigenfunction of the Laplacian on the
  -- * 3-dimensional hyperbolic space.
  -- *
  -- * legendre_H3d_0(lambda,eta) := sin(lambda*eta)/(lambda*sinh(eta))
  -- * 
  -- * Normalization:
  -- * Flat-Lim legendre_H3d_0(lambda,eta) = j_0(lambda*eta)
  -- *
  -- * eta >= 0.0
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_legendre_H3d_0_e
     (lambda : double;
      eta : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:274
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d_0_e";

   function gsl_sf_legendre_H3d_0 (lambda : double; eta : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d_0";

  -- First radial eigenfunction of the Laplacian on the
  -- * 3-dimensional hyperbolic space.
  -- *
  -- * legendre_H3d_1(lambda,eta) :=
  -- *    1/sqrt(lambda^2 + 1) sin(lam eta)/(lam sinh(eta))
  -- *    (coth(eta) - lambda cot(lambda*eta))
  -- * 
  -- * Normalization:
  -- * Flat-Lim legendre_H3d_1(lambda,eta) = j_1(lambda*eta)
  -- *
  -- * eta >= 0.0
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_legendre_H3d_1_e
     (lambda : double;
      eta : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:291
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d_1_e";

   function gsl_sf_legendre_H3d_1 (lambda : double; eta : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:292
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d_1";

  -- l'th radial eigenfunction of the Laplacian on the
  -- * 3-dimensional hyperbolic space.
  -- *
  -- * Normalization:
  -- * Flat-Lim legendre_H3d_l(l,lambda,eta) = j_l(lambda*eta)
  -- *
  -- * eta >= 0.0, l >= 0
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_legendre_H3d_e
     (l : int;
      lambda : double;
      eta : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:304
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d_e";

   function gsl_sf_legendre_H3d
     (l : int;
      lambda : double;
      eta : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d";

  -- Array of H3d(ell),  0 <= ell <= lmax
  --  

   function gsl_sf_legendre_H3d_array
     (lmax : int;
      lambda : double;
      eta : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d_array";

  -- associated legendre P_{lm} routines  
   type gsl_sf_legendre_t is 
     (GSL_SF_LEGENDRE_SCHMIDT,
      GSL_SF_LEGENDRE_SPHARM,
      GSL_SF_LEGENDRE_FULL,
      GSL_SF_LEGENDRE_NONE)
   with Convention => C;  -- /usr/include/gsl/gsl_sf_legendre.h:320

   function gsl_sf_legendre_array
     (norm : gsl_sf_legendre_t;
      lmax : size_t;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:322
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_array";

   function gsl_sf_legendre_array_e
     (norm : gsl_sf_legendre_t;
      lmax : size_t;
      x : double;
      csphase : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_array_e";

   function gsl_sf_legendre_deriv_array
     (norm : gsl_sf_legendre_t;
      lmax : size_t;
      x : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv_array";

   function gsl_sf_legendre_deriv_array_e
     (norm : gsl_sf_legendre_t;
      lmax : size_t;
      x : double;
      csphase : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv_array_e";

   function gsl_sf_legendre_deriv_alt_array
     (norm : gsl_sf_legendre_t;
      lmax : size_t;
      x : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:338
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv_alt_array";

   function gsl_sf_legendre_deriv_alt_array_e
     (norm : gsl_sf_legendre_t;
      lmax : size_t;
      x : double;
      csphase : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:342
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv_alt_array_e";

   function gsl_sf_legendre_deriv2_array
     (norm : gsl_sf_legendre_t;
      lmax : size_t;
      x : double;
      result_array : access double;
      result_deriv_array : access double;
      result_deriv2_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:347
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv2_array";

   function gsl_sf_legendre_deriv2_array_e
     (norm : gsl_sf_legendre_t;
      lmax : size_t;
      x : double;
      csphase : double;
      result_array : access double;
      result_deriv_array : access double;
      result_deriv2_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:352
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv2_array_e";

   function gsl_sf_legendre_deriv2_alt_array
     (norm : gsl_sf_legendre_t;
      lmax : size_t;
      x : double;
      result_array : access double;
      result_deriv_array : access double;
      result_deriv2_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:358
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv2_alt_array";

   function gsl_sf_legendre_deriv2_alt_array_e
     (norm : gsl_sf_legendre_t;
      lmax : size_t;
      x : double;
      csphase : double;
      result_array : access double;
      result_deriv_array : access double;
      result_deriv2_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:363
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv2_alt_array_e";

   function gsl_sf_legendre_array_n (lmax : size_t) return size_t  -- /usr/include/gsl/gsl_sf_legendre.h:369
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_array_n";

   function gsl_sf_legendre_array_index (l : size_t; m : size_t) return size_t  -- /usr/include/gsl/gsl_sf_legendre.h:370
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_array_index";

   function gsl_sf_legendre_nlm (lmax : size_t) return size_t  -- /usr/include/gsl/gsl_sf_legendre.h:371
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_nlm";

end GSL.Low_Level.gsl_gsl_sf_legendre_h;
