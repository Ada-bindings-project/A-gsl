pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_pow_int_h is

  -- specfunc/gsl_sf_pow_int.h
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
  -- Calculate x^n.
  -- * Does not check for overflow/underflow.
  --  

   function gsl_sf_pow_int_e
     (x : double;
      n : int;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_pow_int.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_pow_int_e";

   function gsl_sf_pow_int (x : double; n : int) return double  -- /usr/include/gsl/gsl_sf_pow_int.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_pow_int";

end GSL.Low_Level.gsl_gsl_sf_pow_int_h;
