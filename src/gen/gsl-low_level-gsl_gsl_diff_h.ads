pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_math_h;

package GSL.Low_Level.gsl_gsl_diff_h is

  -- diff/gsl_diff.h
  -- * 
  -- * Copyright (C) 2000 David Morrison
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

   function gsl_diff_central
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      x : double;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_diff.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_diff_central";

   function gsl_diff_backward
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      x : double;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_diff.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_diff_backward";

   function gsl_diff_forward
     (f : access constant GSL.Low_Level.gsl_gsl_math_h.gsl_function;
      x : double;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_diff.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_diff_forward";

end GSL.Low_Level.gsl_gsl_diff_h;
