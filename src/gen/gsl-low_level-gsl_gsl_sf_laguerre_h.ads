pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_laguerre_h is

  -- specfunc/gsl_sf_laguerre.h
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
  -- L^a_n(x) = (a+1)_n / n! 1F1(-n,a+1,x)  
  -- Evaluate generalized Laguerre polynomials
  -- * using explicit representations.
  -- *
  -- * exceptions: none
  --  

   function gsl_sf_laguerre_1_e
     (a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_laguerre.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_laguerre_1_e";

   function gsl_sf_laguerre_2_e
     (a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_laguerre.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_laguerre_2_e";

   function gsl_sf_laguerre_3_e
     (a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_laguerre.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_laguerre_3_e";

   function gsl_sf_laguerre_1 (a : double; x : double) return double  -- /usr/include/gsl/gsl_sf_laguerre.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_laguerre_1";

   function gsl_sf_laguerre_2 (a : double; x : double) return double  -- /usr/include/gsl/gsl_sf_laguerre.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_laguerre_2";

   function gsl_sf_laguerre_3 (a : double; x : double) return double  -- /usr/include/gsl/gsl_sf_laguerre.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_laguerre_3";

  -- Evaluate generalized Laguerre polynomials.
  -- *
  -- * a > -1.0
  -- * n >= 0
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_laguerre_n_e
     (n : int;
      a : double;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_laguerre.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_laguerre_n_e";

   function gsl_sf_laguerre_n
     (n : int;
      a : double;
      x : double) return double  -- /usr/include/gsl/gsl_sf_laguerre.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_laguerre_n";

end GSL.Low_Level.gsl_gsl_sf_laguerre_h;
