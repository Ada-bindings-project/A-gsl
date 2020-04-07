pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_expint_h is

  -- specfunc/gsl_sf_expint.h
  -- * 
  -- * Copyright (C) 2007 Brian Gough
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2001, 2002 Gerard Jungman
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
  -- E_1(x) := Re[ Integrate[ Exp[-xt]/t, {t,1,Infinity}] ]
  -- *
  -- * x != 0.0
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW, GSL_EUNDRFLW
  --  

   function gsl_sf_expint_E1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_E1_e";

   function gsl_sf_expint_E1 (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_E1";

  -- E_2(x) := Re[ Integrate[ Exp[-xt]/t^2, {t,1,Infinity}] ]
  -- *
  -- * x != 0.0
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW, GSL_EUNDRFLW
  --  

   function gsl_sf_expint_E2_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_E2_e";

   function gsl_sf_expint_E2 (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_E2";

  -- E_n(x) := Re[ Integrate[ Exp[-xt]/t^n, {t,1,Infinity}] ]
  -- *
  -- * x != 0.0
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW, GSL_EUNDRFLW
  --  

   function gsl_sf_expint_En_e
     (n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_En_e";

   function gsl_sf_expint_En (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_En";

  -- E_1_scaled(x) := exp(x) E_1(x)
  -- *
  -- * x != 0.0
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW, GSL_EUNDRFLW
  --  

   function gsl_sf_expint_E1_scaled_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_E1_scaled_e";

   function gsl_sf_expint_E1_scaled (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_E1_scaled";

  -- E_2_scaled(x) := exp(x) E_2(x)
  -- *
  -- * x != 0.0
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW, GSL_EUNDRFLW
  --  

   function gsl_sf_expint_E2_scaled_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_E2_scaled_e";

   function gsl_sf_expint_E2_scaled (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_E2_scaled";

  -- E_n_scaled(x) := exp(x) E_n(x)
  -- *
  -- * x != 0.0
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW, GSL_EUNDRFLW
  --  

   function gsl_sf_expint_En_scaled_e
     (n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_En_scaled_e";

   function gsl_sf_expint_En_scaled (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_En_scaled";

  -- Ei(x) := - PV Integrate[ Exp[-t]/t, {t,-x,Infinity}]
  -- *       :=   PV Integrate[ Exp[t]/t, {t,-Infinity,x}]
  -- *
  -- * x != 0.0
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW, GSL_EUNDRFLW
  --  

   function gsl_sf_expint_Ei_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_Ei_e";

   function gsl_sf_expint_Ei (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_Ei";

  -- Ei_scaled(x) := exp(-x) Ei(x)
  -- *
  -- * x != 0.0
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW, GSL_EUNDRFLW
  --  

   function gsl_sf_expint_Ei_scaled_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_Ei_scaled_e";

   function gsl_sf_expint_Ei_scaled (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_Ei_scaled";

  -- Shi(x) := Integrate[ Sinh[t]/t, {t,0,x}]
  -- *
  -- * exceptions: GSL_EOVRFLW, GSL_EUNDRFLW
  --  

   function gsl_sf_Shi_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_Shi_e";

   function gsl_sf_Shi (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_Shi";

  -- Chi(x) := Re[ M_EULER + log(x) + Integrate[(Cosh[t]-1)/t, {t,0,x}] ]
  -- *
  -- * x != 0.0
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW, GSL_EUNDRFLW
  --  

   function gsl_sf_Chi_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_Chi_e";

   function gsl_sf_Chi (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_Chi";

  -- Ei_3(x) := Integral[ Exp[-t^3], {t,0,x}]
  -- *
  -- * x >= 0.0
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_expint_3_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_3_e";

   function gsl_sf_expint_3 (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_expint_3";

  -- Si(x) := Integrate[ Sin[t]/t, {t,0,x}]
  -- *
  -- * exceptions: none
  --  

   function gsl_sf_Si_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_Si_e";

   function gsl_sf_Si (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_Si";

  -- Ci(x) := -Integrate[ Cos[t]/t, {t,x,Infinity}]
  -- *
  -- * x > 0.0
  -- * exceptions: GSL_EDOM 
  --  

   function gsl_sf_Ci_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_Ci_e";

   function gsl_sf_Ci (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_Ci";

  -- AtanInt(x) := Integral[ Arctan[t]/t, {t,0,x}]
  -- *
  -- *
  -- * exceptions:
  --  

   function gsl_sf_atanint_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_expint.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_atanint_e";

   function gsl_sf_atanint (x : double) return double  -- /usr/include/gsl/gsl_sf_expint.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_atanint";

end GSL.Low_Level.gsl_gsl_sf_expint_h;
