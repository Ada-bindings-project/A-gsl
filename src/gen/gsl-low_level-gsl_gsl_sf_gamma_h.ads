pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_gamma_h is

   GSL_SF_GAMMA_XMAX : constant := 171.0;  --  /usr/include/gsl/gsl_sf_gamma.h:283

   GSL_SF_FACT_NMAX : constant := 170;  --  /usr/include/gsl/gsl_sf_gamma.h:286

   GSL_SF_DOUBLEFACT_NMAX : constant := 297;  --  /usr/include/gsl/gsl_sf_gamma.h:289

  -- specfunc/gsl_sf_gamma.h
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
  -- Log[Gamma(x)], x not a negative integer
  -- * Uses real Lanczos method.
  -- * Returns the real part of Log[Gamma[x]] when x < 0,
  -- * i.e. Log[|Gamma[x]|].
  -- *
  -- * exceptions: GSL_EDOM, GSL_EROUND
  --  

   function gsl_sf_lngamma_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lngamma_e";

   function gsl_sf_lngamma (x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lngamma";

  -- Log[Gamma(x)], x not a negative integer
  -- * Uses real Lanczos method. Determines
  -- * the sign of Gamma[x] as well as Log[|Gamma[x]|] for x < 0.
  -- * So Gamma[x] = sgn * Exp[result_lg].
  -- *
  -- * exceptions: GSL_EDOM, GSL_EROUND
  --  

   function gsl_sf_lngamma_sgn_e
     (x : double;
      result_lg : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      sgn : access double) return int  -- /usr/include/gsl/gsl_sf_gamma.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lngamma_sgn_e";

  -- Gamma(x), x not a negative integer
  -- * Uses real Lanczos method.
  -- *
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW, GSL_EROUND
  --  

   function gsl_sf_gamma_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gamma_e";

   function gsl_sf_gamma (x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gamma";

  -- Regulated Gamma Function, x > 0
  -- * Gamma^*(x) = Gamma(x)/(Sqrt[2Pi] x^(x-1/2) exp(-x))
  -- *            = (1 + 1/(12x) + ...),  x->Inf
  -- * A useful suggestion of Temme.
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_gammastar_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gammastar_e";

   function gsl_sf_gammastar (x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gammastar";

  -- 1/Gamma(x)
  -- * Uses real Lanczos method.
  -- *
  -- * exceptions: GSL_EUNDRFLW, GSL_EROUND
  --  

   function gsl_sf_gammainv_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gammainv_e";

   function gsl_sf_gammainv (x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gammainv";

  -- Log[Gamma(z)] for z complex, z not a negative integer
  -- * Uses complex Lanczos method. Note that the phase part (arg)
  -- * is not well-determined when |z| is very large, due
  -- * to inevitable roundoff in restricting to (-Pi,Pi].
  -- * This will raise the GSL_ELOSS exception when it occurs.
  -- * The absolute value part (lnr), however, never suffers.
  -- *
  -- * Calculates:
  -- *   lnr = log|Gamma(z)|
  -- *   arg = arg(Gamma(z))  in (-Pi, Pi]
  -- *
  -- * exceptions: GSL_EDOM, GSL_ELOSS
  --  

   function gsl_sf_lngamma_complex_e
     (zr : double;
      zi : double;
      lnr : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      arg : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lngamma_complex_e";

  -- x^n / n!
  -- *
  -- * x >= 0.0, n >= 0
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW, GSL_EUNDRFLW
  --  

   function gsl_sf_taylorcoeff_e
     (n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_taylorcoeff_e";

   function gsl_sf_taylorcoeff (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_taylorcoeff";

  -- n!
  -- *
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW
  --  

   function gsl_sf_fact_e (n : unsigned; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fact_e";

   function gsl_sf_fact (n : unsigned) return double  -- /usr/include/gsl/gsl_sf_gamma.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fact";

  -- n!! = n(n-2)(n-4) ... 
  -- *
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW
  --  

   function gsl_sf_doublefact_e (n : unsigned; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_doublefact_e";

   function gsl_sf_doublefact (n : unsigned) return double  -- /usr/include/gsl/gsl_sf_gamma.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_doublefact";

  -- log(n!) 
  -- * Faster than ln(Gamma(n+1)) for n < 170; defers for larger n.
  -- *
  -- * exceptions: none
  --  

   function gsl_sf_lnfact_e (n : unsigned; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnfact_e";

   function gsl_sf_lnfact (n : unsigned) return double  -- /usr/include/gsl/gsl_sf_gamma.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnfact";

  -- log(n!!) 
  -- *
  -- * exceptions: none
  --  

   function gsl_sf_lndoublefact_e (n : unsigned; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lndoublefact_e";

   function gsl_sf_lndoublefact (n : unsigned) return double  -- /usr/include/gsl/gsl_sf_gamma.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lndoublefact";

  -- log(n choose m)
  -- *
  -- * exceptions: GSL_EDOM 
  --  

   function gsl_sf_lnchoose_e
     (n : unsigned;
      m : unsigned;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnchoose_e";

   function gsl_sf_lnchoose (n : unsigned; m : unsigned) return double  -- /usr/include/gsl/gsl_sf_gamma.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnchoose";

  -- n choose m
  -- *
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW
  --  

   function gsl_sf_choose_e
     (n : unsigned;
      m : unsigned;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_choose_e";

   function gsl_sf_choose (n : unsigned; m : unsigned) return double  -- /usr/include/gsl/gsl_sf_gamma.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_choose";

  -- Logarithm of Pochhammer (Apell) symbol
  -- *   log( (a)_x )
  -- *   where (a)_x := Gamma[a + x]/Gamma[a]
  -- *
  -- * a > 0, a+x > 0
  -- *
  -- * exceptions:  GSL_EDOM
  --  

   function gsl_sf_lnpoch_e
     (a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnpoch_e";

   function gsl_sf_lnpoch (a : double; x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnpoch";

  -- Logarithm of Pochhammer (Apell) symbol, with sign information.
  -- *   result = log( |(a)_x| )
  -- *   sgn    = sgn( (a)_x )
  -- *   where (a)_x := Gamma[a + x]/Gamma[a]
  -- *
  -- * a != neg integer, a+x != neg integer
  -- *
  -- * exceptions:  GSL_EDOM
  --  

   function gsl_sf_lnpoch_sgn_e
     (a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      sgn : access double) return int  -- /usr/include/gsl/gsl_sf_gamma.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnpoch_sgn_e";

  -- Pochhammer (Apell) symbol
  -- *   (a)_x := Gamma[a + x]/Gamma[x]
  -- *
  -- * a != neg integer, a+x != neg integer
  -- *
  -- * exceptions:  GSL_EDOM, GSL_EOVRFLW
  --  

   function gsl_sf_poch_e
     (a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:195
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_poch_e";

   function gsl_sf_poch (a : double; x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_poch";

  -- Relative Pochhammer (Apell) symbol
  -- *   ((a,x) - 1)/x
  -- *   where (a,x) = (a)_x := Gamma[a + x]/Gamma[a]
  -- *
  -- * exceptions:  GSL_EDOM
  --  

   function gsl_sf_pochrel_e
     (a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:205
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_pochrel_e";

   function gsl_sf_pochrel (a : double; x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:206
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_pochrel";

  -- Normalized Incomplete Gamma Function
  -- *
  -- * Q(a,x) = 1/Gamma(a) Integral[ t^(a-1) e^(-t), {t,x,Infinity} ]
  -- *
  -- * a >= 0, x >= 0
  -- *   Q(a,0) := 1
  -- *   Q(0,x) := 0, x != 0
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_gamma_inc_Q_e
     (a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gamma_inc_Q_e";

   function gsl_sf_gamma_inc_Q (a : double; x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gamma_inc_Q";

  -- Complementary Normalized Incomplete Gamma Function
  -- *
  -- * P(a,x) = 1/Gamma(a) Integral[ t^(a-1) e^(-t), {t,0,x} ]
  -- *
  -- * a > 0, x >= 0
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_gamma_inc_P_e
     (a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gamma_inc_P_e";

   function gsl_sf_gamma_inc_P (a : double; x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gamma_inc_P";

  -- Non-normalized Incomplete Gamma Function
  -- *
  -- * Gamma(a,x) := Integral[ t^(a-1) e^(-t), {t,x,Infinity} ]
  -- *
  -- * x >= 0.0
  -- *   Gamma(a, 0) := Gamma(a)
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_gamma_inc_e
     (a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gamma_inc_e";

   function gsl_sf_gamma_inc (a : double; x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gamma_inc";

  -- Logarithm of Beta Function
  -- * Log[B(a,b)]
  -- *
  -- * a > 0, b > 0
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_lnbeta_e
     (a : double;
      b : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnbeta_e";

   function gsl_sf_lnbeta (a : double; b : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnbeta";

   function gsl_sf_lnbeta_sgn_e
     (x : double;
      y : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      sgn : access double) return int  -- /usr/include/gsl/gsl_sf_gamma.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lnbeta_sgn_e";

  -- Beta Function
  -- * B(a,b)
  -- *
  -- * a > 0, b > 0
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW, GSL_EUNDRFLW
  --  

   function gsl_sf_beta_e
     (a : double;
      b : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:266
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_beta_e";

   function gsl_sf_beta (a : double; b : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:267
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_beta";

  -- Normalized Incomplete Beta Function
  -- * B_x(a,b)/B(a,b)
  -- *
  -- * a > 0, b > 0, 0 <= x <= 1
  -- * exceptions: GSL_EDOM, GSL_EUNDRFLW
  --  

   function gsl_sf_beta_inc_e
     (a : double;
      b : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gamma.h:276
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_beta_inc_e";

   function gsl_sf_beta_inc
     (a : double;
      b : double;
      x : double) return double  -- /usr/include/gsl/gsl_sf_gamma.h:277
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_beta_inc";

  -- The maximum x such that gamma(x) is not
  -- * considered an overflow.
  --  

  -- The maximum n such that gsl_sf_fact(n) does not give an overflow.  
  -- The maximum n such that gsl_sf_doublefact(n) does not give an overflow.  
end GSL.Low_Level.gsl_gsl_sf_gamma_h;
