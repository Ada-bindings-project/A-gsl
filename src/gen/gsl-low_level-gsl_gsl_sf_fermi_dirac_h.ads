pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_fermi_dirac_h is

  -- specfunc/gsl_sf_fermi_dirac.h
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
  -- Complete Fermi-Dirac Integrals:
  -- *
  -- *  F_j(x)   := 1/Gamma[j+1] Integral[ t^j /(Exp[t-x] + 1), {t,0,Infinity}]
  -- *
  -- *
  -- * Incomplete Fermi-Dirac Integrals:
  -- *
  -- *  F_j(x,b) := 1/Gamma[j+1] Integral[ t^j /(Exp[t-x] + 1), {t,b,Infinity}]
  --  

  -- Complete integral F_{-1}(x) = e^x / (1 + e^x)
  -- *
  -- * exceptions: GSL_EUNDRFLW
  --  

   function gsl_sf_fermi_dirac_m1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_m1_e";

   function gsl_sf_fermi_dirac_m1 (x : double) return double  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_m1";

  -- Complete integral F_0(x) = ln(1 + e^x)
  -- *
  -- * exceptions: GSL_EUNDRFLW
  --  

   function gsl_sf_fermi_dirac_0_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_0_e";

   function gsl_sf_fermi_dirac_0 (x : double) return double  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_0";

  -- Complete integral F_1(x)
  -- *
  -- * exceptions: GSL_EUNDRFLW, GSL_EOVRFLW
  --  

   function gsl_sf_fermi_dirac_1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_1_e";

   function gsl_sf_fermi_dirac_1 (x : double) return double  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_1";

  -- Complete integral F_2(x)
  -- *
  -- * exceptions: GSL_EUNDRFLW, GSL_EOVRFLW
  --  

   function gsl_sf_fermi_dirac_2_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_2_e";

   function gsl_sf_fermi_dirac_2 (x : double) return double  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_2";

  -- Complete integral F_j(x)
  -- * for integer j
  -- *
  -- * exceptions: GSL_EUNDRFLW, GSL_EOVRFLW
  --  

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

  -- Complete integral F_{-1/2}(x)
  -- *
  -- * exceptions: GSL_EUNDRFLW, GSL_EOVRFLW
  --  

   function gsl_sf_fermi_dirac_mhalf_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_mhalf_e";

   function gsl_sf_fermi_dirac_mhalf (x : double) return double  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_mhalf";

  -- Complete integral F_{1/2}(x)
  -- *
  -- * exceptions: GSL_EUNDRFLW, GSL_EOVRFLW
  --  

   function gsl_sf_fermi_dirac_half_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_half_e";

   function gsl_sf_fermi_dirac_half (x : double) return double  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_half";

  -- Complete integral F_{3/2}(x)
  -- *
  -- * exceptions: GSL_EUNDRFLW, GSL_EOVRFLW
  --  

   function gsl_sf_fermi_dirac_3half_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_3half_e";

   function gsl_sf_fermi_dirac_3half (x : double) return double  -- /usr/include/gsl/gsl_sf_fermi_dirac.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_fermi_dirac_3half";

  -- Incomplete integral F_0(x,b) = ln(1 + e^(b-x)) - (b-x)
  -- *
  -- * exceptions: GSL_EUNDRFLW, GSL_EDOM
  --  

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
