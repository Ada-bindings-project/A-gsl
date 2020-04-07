pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_zeta_h is

  -- specfunc/gsl_sf_zeta.h
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
  -- Riemann Zeta Function
  -- * zeta(n) = Sum[ k^(-n), {k,1,Infinity} ]
  -- *
  -- * n=integer, n != 1
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW
  --  

   function gsl_sf_zeta_int_e (n : int; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_zeta.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_zeta_int_e";

   function gsl_sf_zeta_int (n : int) return double  -- /usr/include/gsl/gsl_sf_zeta.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_zeta_int";

  -- Riemann Zeta Function
  -- * zeta(x) = Sum[ k^(-s), {k,1,Infinity} ], s != 1.0
  -- *
  -- * s != 1.0
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW
  --  

   function gsl_sf_zeta_e (s : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_zeta.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_zeta_e";

   function gsl_sf_zeta (s : double) return double  -- /usr/include/gsl/gsl_sf_zeta.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_zeta";

  -- Riemann Zeta Function minus 1
  -- *   useful for evaluating the fractional part
  -- *   of Riemann zeta for large argument
  -- *
  -- * s != 1.0
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW
  --  

   function gsl_sf_zetam1_e (s : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_zeta.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_zetam1_e";

   function gsl_sf_zetam1 (s : double) return double  -- /usr/include/gsl/gsl_sf_zeta.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_zetam1";

  -- Riemann Zeta Function minus 1 for integer arg
  -- *   useful for evaluating the fractional part
  -- *   of Riemann zeta for large argument
  -- *
  -- * s != 1.0
  -- * exceptions: GSL_EDOM, GSL_EOVRFLW
  --  

   function gsl_sf_zetam1_int_e (s : int; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_zeta.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_zetam1_int_e";

   function gsl_sf_zetam1_int (s : int) return double  -- /usr/include/gsl/gsl_sf_zeta.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_zetam1_int";

  -- Hurwitz Zeta Function
  -- * zeta(s,q) = Sum[ (k+q)^(-s), {k,0,Infinity} ]
  -- *
  -- * s > 1.0, q > 0.0
  -- * exceptions: GSL_EDOM, GSL_EUNDRFLW, GSL_EOVRFLW
  --  

   function gsl_sf_hzeta_e
     (s : double;
      q : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_zeta.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hzeta_e";

   function gsl_sf_hzeta (s : double; q : double) return double  -- /usr/include/gsl/gsl_sf_zeta.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hzeta";

  -- Eta Function
  -- * eta(n) = (1-2^(1-n)) zeta(n)
  -- *
  -- * exceptions: GSL_EUNDRFLW, GSL_EOVRFLW
  --  

   function gsl_sf_eta_int_e (n : int; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_zeta.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_eta_int_e";

   function gsl_sf_eta_int (n : int) return double  -- /usr/include/gsl/gsl_sf_zeta.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_eta_int";

  -- Eta Function
  -- * eta(s) = (1-2^(1-s)) zeta(s)
  -- *
  -- * exceptions: GSL_EUNDRFLW, GSL_EOVRFLW
  --  

   function gsl_sf_eta_e (s : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_zeta.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_eta_e";

   function gsl_sf_eta (s : double) return double  -- /usr/include/gsl/gsl_sf_zeta.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_eta";

end GSL.Low_Level.gsl_gsl_sf_zeta_h;
