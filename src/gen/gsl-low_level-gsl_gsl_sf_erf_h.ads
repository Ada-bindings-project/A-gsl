pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_erf_h is

  -- specfunc/gsl_sf_erf.h
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
  -- Complementary Error Function
  -- * erfc(x) := 2/Sqrt[Pi] Integrate[Exp[-t^2], {t,x,Infinity}]
  -- *
  -- * exceptions: none
  --  

   function gsl_sf_erfc_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_erf.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_erfc_e";

   function gsl_sf_erfc (x : double) return double  -- /usr/include/gsl/gsl_sf_erf.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_erfc";

  -- Log Complementary Error Function
  -- *
  -- * exceptions: none
  --  

   function gsl_sf_log_erfc_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_erf.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_log_erfc_e";

   function gsl_sf_log_erfc (x : double) return double  -- /usr/include/gsl/gsl_sf_erf.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_log_erfc";

  -- Error Function
  -- * erf(x) := 2/Sqrt[Pi] Integrate[Exp[-t^2], {t,0,x}]
  -- *
  -- * exceptions: none
  --  

   function gsl_sf_erf_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_erf.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_erf_e";

   function gsl_sf_erf (x : double) return double  -- /usr/include/gsl/gsl_sf_erf.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_erf";

  -- Probability functions:
  -- * Z(x) :  Abramowitz+Stegun 26.2.1
  -- * Q(x) :  Abramowitz+Stegun 26.2.3
  -- *
  -- * exceptions: none
  --  

   function gsl_sf_erf_Z_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_erf.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_erf_Z_e";

   function gsl_sf_erf_Q_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_erf.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_erf_Q_e";

   function gsl_sf_erf_Z (x : double) return double  -- /usr/include/gsl/gsl_sf_erf.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_erf_Z";

   function gsl_sf_erf_Q (x : double) return double  -- /usr/include/gsl/gsl_sf_erf.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_erf_Q";

  -- Hazard function, also known as the inverse Mill's ratio.
  -- *
  -- *   H(x) := Z(x)/Q(x)
  -- *         = Sqrt[2/Pi] Exp[-x^2 / 2] / Erfc[x/Sqrt[2]]
  -- *
  -- * exceptions: GSL_EUNDRFLW
  --  

   function gsl_sf_hazard_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_erf.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hazard_e";

   function gsl_sf_hazard (x : double) return double  -- /usr/include/gsl/gsl_sf_erf.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hazard";

end GSL.Low_Level.gsl_gsl_sf_erf_h;
