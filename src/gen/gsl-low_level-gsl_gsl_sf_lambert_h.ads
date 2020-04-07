pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_lambert_h is

  -- specfunc/gsl_sf_lambert.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2001 Gerard Jungman
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
  -- Lambert's Function W_0(x)
  -- *
  -- * W_0(x) is the principal branch of the
  -- * implicit function defined by W e^W = x.
  -- *
  -- * -1/E < x < \infty
  -- *
  -- * exceptions: GSL_EMAXITER;
  --  

   function gsl_sf_lambert_W0_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_lambert.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lambert_W0_e";

   function gsl_sf_lambert_W0 (x : double) return double  -- /usr/include/gsl/gsl_sf_lambert.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lambert_W0";

  -- Lambert's Function W_{-1}(x)
  -- *
  -- * W_{-1}(x) is the second real branch of the
  -- * implicit function defined by W e^W = x.
  -- * It agrees with W_0(x) when x >= 0.
  -- *
  -- * -1/E < x < \infty
  -- *
  -- * exceptions: GSL_MAXITER;
  --  

   function gsl_sf_lambert_Wm1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_lambert.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lambert_Wm1_e";

   function gsl_sf_lambert_Wm1 (x : double) return double  -- /usr/include/gsl/gsl_sf_lambert.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_lambert_Wm1";

end GSL.Low_Level.gsl_gsl_sf_lambert_h;
