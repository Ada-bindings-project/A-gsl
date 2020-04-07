pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_log_h is

  -- specfunc/gsl_sf_log.h
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
  -- Provide a logarithm function with GSL semantics.
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_log_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_log.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_log_e";

   function gsl_sf_log (x : double) return double  -- /usr/include/gsl/gsl_sf_log.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_log";

  -- Log(|x|)
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_log_abs_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_log.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_log_abs_e";

   function gsl_sf_log_abs (x : double) return double  -- /usr/include/gsl/gsl_sf_log.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_log_abs";

  -- Complex Logarithm
  -- *   exp(lnr + I theta) = zr + I zi
  -- * Returns argument in [-pi,pi].
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_complex_log_e
     (zr : double;
      zi : double;
      lnr : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      theta : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_log.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_complex_log_e";

  -- Log(1 + x)
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_log_1plusx_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_log.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_log_1plusx_e";

   function gsl_sf_log_1plusx (x : double) return double  -- /usr/include/gsl/gsl_sf_log.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_log_1plusx";

  -- Log(1 + x) - x
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_log_1plusx_mx_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_log.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_log_1plusx_mx_e";

   function gsl_sf_log_1plusx_mx (x : double) return double  -- /usr/include/gsl/gsl_sf_log.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_log_1plusx_mx";

end GSL.Low_Level.gsl_gsl_sf_log_h;
