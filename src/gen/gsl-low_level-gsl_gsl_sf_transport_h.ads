pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_transport_h is

  -- specfunc/gsl_sf_transport.h
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
  -- Transport function:
  -- *   J(n,x) := Integral[ t^n e^t /(e^t - 1)^2, {t,0,x}]
  --  

  -- J(2,x)
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_transport_2_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_transport.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_transport_2_e";

   function gsl_sf_transport_2 (x : double) return double  -- /usr/include/gsl/gsl_sf_transport.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_transport_2";

  -- J(3,x)
  -- *
  -- * exceptions: GSL_EDOM, GSL_EUNDRFLW
  --  

   function gsl_sf_transport_3_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_transport.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_transport_3_e";

   function gsl_sf_transport_3 (x : double) return double  -- /usr/include/gsl/gsl_sf_transport.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_transport_3";

  -- J(4,x)
  -- *
  -- * exceptions: GSL_EDOM, GSL_EUNDRFLW
  --  

   function gsl_sf_transport_4_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_transport.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_transport_4_e";

   function gsl_sf_transport_4 (x : double) return double  -- /usr/include/gsl/gsl_sf_transport.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_transport_4";

  -- J(5,x)
  -- *
  -- * exceptions: GSL_EDOM, GSL_EUNDRFLW
  --  

   function gsl_sf_transport_5_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_transport.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_transport_5_e";

   function gsl_sf_transport_5 (x : double) return double  -- /usr/include/gsl/gsl_sf_transport.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_transport_5";

end GSL.Low_Level.gsl_gsl_sf_transport_h;
