pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_gegenbauer_h is

  -- specfunc/gsl_sf_gegenbauer.h
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
  -- Evaluate Gegenbauer polynomials
  -- * using explicit representations.
  -- *
  -- * exceptions: none
  --  

   function gsl_sf_gegenpoly_1_e
     (lambda : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gegenbauer.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gegenpoly_1_e";

   function gsl_sf_gegenpoly_2_e
     (lambda : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gegenbauer.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gegenpoly_2_e";

   function gsl_sf_gegenpoly_3_e
     (lambda : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gegenbauer.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gegenpoly_3_e";

   function gsl_sf_gegenpoly_1 (lambda : double; x : double) return double  -- /usr/include/gsl/gsl_sf_gegenbauer.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gegenpoly_1";

   function gsl_sf_gegenpoly_2 (lambda : double; x : double) return double  -- /usr/include/gsl/gsl_sf_gegenbauer.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gegenpoly_2";

   function gsl_sf_gegenpoly_3 (lambda : double; x : double) return double  -- /usr/include/gsl/gsl_sf_gegenbauer.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gegenpoly_3";

  -- Evaluate Gegenbauer polynomials.
  -- *
  -- * lambda > -1/2, n >= 0
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_gegenpoly_n_e
     (n : int;
      lambda : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_gegenbauer.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gegenpoly_n_e";

   function gsl_sf_gegenpoly_n
     (n : int;
      lambda : double;
      x : double) return double  -- /usr/include/gsl/gsl_sf_gegenbauer.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gegenpoly_n";

  -- Calculate array of Gegenbauer polynomials
  -- * for n = (0, 1, 2, ... nmax)
  -- *
  -- * lambda > -1/2, nmax >= 0
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_gegenpoly_array
     (nmax : int;
      lambda : double;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_gegenbauer.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_gegenpoly_array";

end GSL.Low_Level.gsl_gsl_sf_gegenbauer_h;
