pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

limited with GSL.Low_Level.gsl_gsl_complex_h;
limited with GSL.Low_Level.gsl_gsl_fft_real_h;

package GSL.Low_Level.gsl_gsl_fft_halfcomplex_h is

  -- fft/gsl_fft_halfcomplex.h
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

   function gsl_fft_halfcomplex_radix2_backward
     (data : access double;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_halfcomplex.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_radix2_backward";

   function gsl_fft_halfcomplex_radix2_inverse
     (data : access double;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_halfcomplex.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_radix2_inverse";

   function gsl_fft_halfcomplex_radix2_transform
     (data : access double;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_halfcomplex.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_radix2_transform";

   type gsl_fft_halfcomplex_wavetable_array5669 is array (0 .. 63) of aliased size_t;
   type gsl_fft_halfcomplex_wavetable_array5671 is array (0 .. 63) of access GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
   type gsl_fft_halfcomplex_wavetable is record
      n : aliased size_t;  -- /usr/include/gsl/gsl_fft_halfcomplex.h:48
      nf : aliased size_t;  -- /usr/include/gsl/gsl_fft_halfcomplex.h:49
      factor : aliased gsl_fft_halfcomplex_wavetable_array5669;  -- /usr/include/gsl/gsl_fft_halfcomplex.h:50
      twiddle : gsl_fft_halfcomplex_wavetable_array5671;  -- /usr/include/gsl/gsl_fft_halfcomplex.h:51
      trig : access GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;  -- /usr/include/gsl/gsl_fft_halfcomplex.h:52
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_fft_halfcomplex.h:54

   function gsl_fft_halfcomplex_wavetable_alloc (arg1 : size_t) return access gsl_fft_halfcomplex_wavetable  -- /usr/include/gsl/gsl_fft_halfcomplex.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_wavetable_alloc";

   procedure gsl_fft_halfcomplex_wavetable_free (wavetable : access gsl_fft_halfcomplex_wavetable)  -- /usr/include/gsl/gsl_fft_halfcomplex.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_wavetable_free";

   function gsl_fft_halfcomplex_backward
     (data : access double;
      stride : size_t;
      n : size_t;
      wavetable : access constant gsl_fft_halfcomplex_wavetable;
      work : access GSL.Low_Level.gsl_gsl_fft_real_h.gsl_fft_real_workspace) return int  -- /usr/include/gsl/gsl_fft_halfcomplex.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_backward";

   function gsl_fft_halfcomplex_inverse
     (data : access double;
      stride : size_t;
      n : size_t;
      wavetable : access constant gsl_fft_halfcomplex_wavetable;
      work : access GSL.Low_Level.gsl_gsl_fft_real_h.gsl_fft_real_workspace) return int  -- /usr/include/gsl/gsl_fft_halfcomplex.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_inverse";

   function gsl_fft_halfcomplex_transform
     (data : access double;
      stride : size_t;
      n : size_t;
      wavetable : access constant gsl_fft_halfcomplex_wavetable;
      work : access GSL.Low_Level.gsl_gsl_fft_real_h.gsl_fft_real_workspace) return int  -- /usr/include/gsl/gsl_fft_halfcomplex.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_transform";

   function gsl_fft_halfcomplex_unpack
     (halfcomplex_coefficient : access double;
      complex_coefficient : access double;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_halfcomplex.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_unpack";

   function gsl_fft_halfcomplex_radix2_unpack
     (halfcomplex_coefficient : access double;
      complex_coefficient : access double;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_halfcomplex.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_radix2_unpack";

end GSL.Low_Level.gsl_gsl_fft_halfcomplex_h;
