pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_hyperg_h is

  -- specfunc/gsl_sf_hyperg.h
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
  -- Hypergeometric function related to Bessel functions
  -- * 0F1[c,x] =
  -- *            Gamma[c]    x^(1/2(1-c)) I_{c-1}(2 Sqrt[x])
  -- *            Gamma[c] (-x)^(1/2(1-c)) J_{c-1}(2 Sqrt[-x])
  -- *
  -- * exceptions: GSL_EOVRFLW, GSL_EUNDRFLW
  --  

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

  -- Confluent hypergeometric function  for integer parameters.
  -- * 1F1[m,n,x] = M(m,n,x)
  -- *
  -- * exceptions: 
  --  

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

  -- Confluent hypergeometric function.
  -- * 1F1[a,b,x] = M(a,b,x)
  -- *
  -- * exceptions:
  --  

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

  -- Confluent hypergeometric function for integer parameters.
  -- * U(m,n,x)
  -- *
  -- * exceptions:
  --  

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

  -- Confluent hypergeometric function for integer parameters.
  -- * U(m,n,x)
  -- *
  -- * exceptions:
  --  

   function gsl_sf_hyperg_U_int_e10_e
     (m : int;
      n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result_e10) return int  -- /usr/include/gsl/gsl_sf_hyperg.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_U_int_e10_e";

  -- Confluent hypergeometric function.
  -- * U(a,b,x)
  -- *
  -- * exceptions:
  --  

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

  -- Confluent hypergeometric function.
  -- * U(a,b,x)
  -- *
  -- * exceptions:
  --  

   function gsl_sf_hyperg_U_e10_e
     (a : double;
      b : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result_e10) return int  -- /usr/include/gsl/gsl_sf_hyperg.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hyperg_U_e10_e";

  -- Gauss hypergeometric function 2F1[a,b,c,x]
  -- * |x| < 1
  -- *
  -- * exceptions:
  --  

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

  -- Gauss hypergeometric function
  -- * 2F1[aR + I aI, aR - I aI, c, x]
  -- * |x| < 1
  -- *
  -- * exceptions:
  --  

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

  -- Renormalized Gauss hypergeometric function
  -- * 2F1[a,b,c,x] / Gamma[c]
  -- * |x| < 1
  -- *
  -- * exceptions:
  --  

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

  -- Renormalized Gauss hypergeometric function
  -- * 2F1[aR + I aI, aR - I aI, c, x] / Gamma[c]
  -- * |x| < 1
  -- *
  -- * exceptions:
  --  

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

  -- Mysterious hypergeometric function. The series representation
  -- * is a divergent hypergeometric series. However, for x < 0 we
  -- * have 2F0(a,b,x) = (-1/x)^a U(a,1+a-b,-1/x)
  -- *
  -- * exceptions: GSL_EDOM
  --  

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
