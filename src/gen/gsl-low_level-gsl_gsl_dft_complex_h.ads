pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_fft_h;

package GSL.Low_Level.gsl_gsl_dft_complex_h is

  -- fft/gsl_dft_complex.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2007 Brian Gough
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

   function gsl_dft_complex_forward
     (data : access double;
      stride : size_t;
      n : size_t;
      result : access double) return int  -- /usr/include/gsl/gsl_dft_complex.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dft_complex_forward";

   function gsl_dft_complex_backward
     (data : access double;
      stride : size_t;
      n : size_t;
      result : access double) return int  -- /usr/include/gsl/gsl_dft_complex.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dft_complex_backward";

   function gsl_dft_complex_inverse
     (data : access double;
      stride : size_t;
      n : size_t;
      result : access double) return int  -- /usr/include/gsl/gsl_dft_complex.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dft_complex_inverse";

   function gsl_dft_complex_transform
     (data : access double;
      stride : size_t;
      n : size_t;
      result : access double;
      sign : GSL.Low_Level.gsl_gsl_fft_h.gsl_fft_direction) return int  -- /usr/include/gsl/gsl_dft_complex.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dft_complex_transform";

end GSL.Low_Level.gsl_gsl_dft_complex_h;
