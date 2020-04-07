pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_permutation_h;
limited with GSL.Low_Level.gsl_gsl_matrix_long_h;

package GSL.Low_Level.gsl_gsl_permute_matrix_long_h is

  -- permutation/gsl_permute_matrix_long.h
  -- * 
  -- * Copyright (C) 2016 Patrick Alken
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

   function gsl_permute_matrix_long (p : access constant GSL.Low_Level.gsl_gsl_permutation_h.gsl_permutation; A : access GSL.Low_Level.gsl_gsl_matrix_long_h.gsl_matrix_long) return int  -- /usr/include/gsl/gsl_permute_matrix_long.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_matrix_long";

end GSL.Low_Level.gsl_gsl_permute_matrix_long_h;
