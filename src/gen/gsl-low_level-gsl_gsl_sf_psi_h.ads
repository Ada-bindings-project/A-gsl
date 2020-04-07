pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_psi_h is

  -- specfunc/gsl_sf_psi.h
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
  -- Poly-Gamma Functions
  -- *
  -- * psi(m,x) := (d/dx)^m psi(0,x) = (d/dx)^{m+1} log(gamma(x))
  --  

  -- Di-Gamma Function  psi(n) = psi(0,n)
  -- *
  -- * n > 0
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_psi_int_e (n : int; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_psi.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_int_e";

   function gsl_sf_psi_int (n : int) return double  -- /usr/include/gsl/gsl_sf_psi.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_int";

  -- Di-Gamma Function psi(x) = psi(0, x)
  -- *
  -- * x != 0.0, -1.0, -2.0, ...
  -- * exceptions: GSL_EDOM, GSL_ELOSS
  --  

   function gsl_sf_psi_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_psi.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_e";

   function gsl_sf_psi (x : double) return double  -- /usr/include/gsl/gsl_sf_psi.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi";

  -- Di-Gamma Function Re[psi(1 + I y)]
  -- *
  -- * exceptions: none
  --  

   function gsl_sf_psi_1piy_e (y : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_psi.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_1piy_e";

   function gsl_sf_psi_1piy (y : double) return double  -- /usr/include/gsl/gsl_sf_psi.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_1piy";

  -- Di-Gamma Function psi(z) for general complex argument z = x + iy
  -- *
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_complex_psi_e
     (x : double;
      y : double;
      result_re : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result;
      result_im : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_psi.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_complex_psi_e";

  -- Tri-Gamma Function psi^(1)(n)
  -- *
  -- * n > 0
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_psi_1_int_e (n : int; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_psi.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_1_int_e";

   function gsl_sf_psi_1_int (n : int) return double  -- /usr/include/gsl/gsl_sf_psi.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_1_int";

  -- Tri-Gamma Function psi^(1)(x)
  -- *
  -- * x != 0.0, -1.0, -2.0, ...
  -- * exceptions: GSL_EDOM, GSL_ELOSS
  --  

   function gsl_sf_psi_1_e (x : double; result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_psi.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_1_e";

   function gsl_sf_psi_1 (x : double) return double  -- /usr/include/gsl/gsl_sf_psi.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_1";

  -- Poly-Gamma Function psi^(n)(x)
  -- *
  -- * n >= 0, x > 0.0
  -- * exceptions: GSL_EDOM
  --  

   function gsl_sf_psi_n_e
     (n : int;
      x : double;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_psi.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_n_e";

   function gsl_sf_psi_n (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_psi.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_psi_n";

end GSL.Low_Level.gsl_gsl_sf_psi_h;
