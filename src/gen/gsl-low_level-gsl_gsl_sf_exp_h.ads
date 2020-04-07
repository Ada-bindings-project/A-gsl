pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_exp_h is

  -- specfunc/gsl_sf_exp.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2004 Gerard Jungman
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
  -- Provide an exp() function with GSL semantics,
  -- * i.e. with proper error checking, etc.
  -- *
  -- * exceptions: GSL_EOVRFLW, GSL_EUNDRFLW
  --  

   function gsl_sf_exp_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_exp.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exp_e";

   function gsl_sf_exp (x : double) return double  -- /usr/include/gsl/gsl_sf_exp.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exp";

  -- Exp(x)
  -- *
  -- * exceptions: GSL_EOVRFLW, GSL_EUNDRFLW
  --  

   function gsl_sf_exp_e10_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result_e10) return int  -- /usr/include/gsl/gsl_sf_exp.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exp_e10_e";

  -- Exponentiate and multiply by a given factor:  y * Exp(x)
  -- *
  -- * exceptions: GSL_EOVRFLW, GSL_EUNDRFLW
  --  

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

  -- Exponentiate and multiply by a given factor:  y * Exp(x)
  -- *
  -- * exceptions: GSL_EOVRFLW, GSL_EUNDRFLW
  --  

   function gsl_sf_exp_mult_e10_e
     (x : double;
      y : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result_e10) return int  -- /usr/include/gsl/gsl_sf_exp.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exp_mult_e10_e";

  -- exp(x)-1
  -- *
  -- * exceptions: GSL_EOVRFLW
  --  

   function gsl_sf_expm1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_exp.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expm1_e";

   function gsl_sf_expm1 (x : double) return double  -- /usr/include/gsl/gsl_sf_exp.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expm1";

  -- (exp(x)-1)/x = 1 + x/2 + x^2/(2*3) + x^3/(2*3*4) + ...
  -- *
  -- * exceptions: GSL_EOVRFLW
  --  

   function gsl_sf_exprel_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_exp.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exprel_e";

   function gsl_sf_exprel (x : double) return double  -- /usr/include/gsl/gsl_sf_exp.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exprel";

  -- 2(exp(x)-1-x)/x^2 = 1 + x/3 + x^2/(3*4) + x^3/(3*4*5) + ...
  -- *
  -- * exceptions: GSL_EOVRFLW
  --  

   function gsl_sf_exprel_2_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_exp.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exprel_2_e";

   function gsl_sf_exprel_2 (x : double) return double  -- /usr/include/gsl/gsl_sf_exp.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exprel_2";

  -- Similarly for the N-th generalization of
  -- * the above. The so-called N-relative exponential
  -- *
  -- * exprel_N(x) = N!/x^N (exp(x) - Sum[x^k/k!, {k,0,N-1}])
  -- *             = 1 + x/(N+1) + x^2/((N+1)(N+2)) + ...
  -- *             = 1F1(1,1+N,x)
  --  

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

  -- Exponentiate a quantity with an associated error.
  --  

   function gsl_sf_exp_err_e
     (x : double;
      dx : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_exp.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exp_err_e";

  -- Exponentiate a quantity with an associated error.
  --  

   function gsl_sf_exp_err_e10_e
     (x : double;
      dx : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result_e10) return int  -- /usr/include/gsl/gsl_sf_exp.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exp_err_e10_e";

  -- Exponentiate and multiply by a given factor:  y * Exp(x),
  -- * for quantities with associated errors.
  -- *
  -- * exceptions: GSL_EOVRFLW, GSL_EUNDRFLW
  --  

   function gsl_sf_exp_mult_err_e
     (x : double;
      dx : double;
      y : double;
      dy : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_exp.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_exp_mult_err_e";

  -- Exponentiate and multiply by a given factor:  y * Exp(x),
  -- * for quantities with associated errors.
  -- *
  -- * exceptions: GSL_EOVRFLW, GSL_EUNDRFLW
  --  

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
