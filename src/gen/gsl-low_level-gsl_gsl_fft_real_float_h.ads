pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

limited with GSL.Low_Level.gsl_gsl_complex_h;

package GSL.Low_Level.gsl_gsl_fft_real_float_h is

  -- fft/gsl_fft_real_float.h
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

   function gsl_fft_real_float_radix2_transform
     (data : access float;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_real_float.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_float_radix2_transform";

   type gsl_fft_real_wavetable_float_array5669 is array (0 .. 63) of aliased size_t;
   type gsl_fft_real_wavetable_float_array5793 is array (0 .. 63) of access GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
   type gsl_fft_real_wavetable_float is record
      n : aliased size_t;  -- /usr/include/gsl/gsl_fft_real_float.h:45
      nf : aliased size_t;  -- /usr/include/gsl/gsl_fft_real_float.h:46
      factor : aliased gsl_fft_real_wavetable_float_array5669;  -- /usr/include/gsl/gsl_fft_real_float.h:47
      twiddle : gsl_fft_real_wavetable_float_array5793;  -- /usr/include/gsl/gsl_fft_real_float.h:48
      trig : access GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;  -- /usr/include/gsl/gsl_fft_real_float.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_fft_real_float.h:51

   type gsl_fft_real_workspace_float is record
      n : aliased size_t;  -- /usr/include/gsl/gsl_fft_real_float.h:55
      scratch : access float;  -- /usr/include/gsl/gsl_fft_real_float.h:56
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_fft_real_float.h:58

   function gsl_fft_real_wavetable_float_alloc (arg1 : size_t) return access gsl_fft_real_wavetable_float  -- /usr/include/gsl/gsl_fft_real_float.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_wavetable_float_alloc";

   procedure gsl_fft_real_wavetable_float_free (wavetable : access gsl_fft_real_wavetable_float)  -- /usr/include/gsl/gsl_fft_real_float.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_wavetable_float_free";

   function gsl_fft_real_workspace_float_alloc (arg1 : size_t) return access gsl_fft_real_workspace_float  -- /usr/include/gsl/gsl_fft_real_float.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_workspace_float_alloc";

   procedure gsl_fft_real_workspace_float_free (workspace : access gsl_fft_real_workspace_float)  -- /usr/include/gsl/gsl_fft_real_float.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_workspace_float_free";

   function gsl_fft_real_float_transform
     (data : access float;
      stride : size_t;
      n : size_t;
      wavetable : access constant gsl_fft_real_wavetable_float;
      work : access gsl_fft_real_workspace_float) return int  -- /usr/include/gsl/gsl_fft_real_float.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_float_transform";

   function gsl_fft_real_float_unpack
     (real_float_coefficient : access float;
      complex_coefficient : access float;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_real_float.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_float_unpack";

end GSL.Low_Level.gsl_gsl_fft_real_float_h;
