pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_complex_h;

with GSL.Low_Level.gsl_gsl_fft_h;

package GSL.Low_Level.gsl_gsl_fft_complex_h is

  -- fft/gsl_fft_complex.h
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

  --  Power of 2 routines   
   function gsl_fft_complex_radix2_forward
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_complex.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_radix2_forward";

   function gsl_fft_complex_radix2_backward
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_complex.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_radix2_backward";

   function gsl_fft_complex_radix2_inverse
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_complex.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_radix2_inverse";

   function gsl_fft_complex_radix2_transform
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : size_t;
      n : size_t;
      sign : GSL.Low_Level.gsl_gsl_fft_h.gsl_fft_direction) return int  -- /usr/include/gsl/gsl_fft_complex.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_radix2_transform";

   function gsl_fft_complex_radix2_dif_forward
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_complex.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_radix2_dif_forward";

   function gsl_fft_complex_radix2_dif_backward
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_complex.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_radix2_dif_backward";

   function gsl_fft_complex_radix2_dif_inverse
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_complex.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_radix2_dif_inverse";

   function gsl_fft_complex_radix2_dif_transform
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : size_t;
      n : size_t;
      sign : GSL.Low_Level.gsl_gsl_fft_h.gsl_fft_direction) return int  -- /usr/include/gsl/gsl_fft_complex.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_radix2_dif_transform";

  --  Mixed Radix general-N routines   
   type gsl_fft_complex_wavetable_array5669 is array (0 .. 63) of aliased size_t;
   type gsl_fft_complex_wavetable_array5671 is array (0 .. 63) of access GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
   type gsl_fft_complex_wavetable is record
      n : aliased size_t;  -- /usr/include/gsl/gsl_fft_complex.h:82
      nf : aliased size_t;  -- /usr/include/gsl/gsl_fft_complex.h:83
      factor : aliased gsl_fft_complex_wavetable_array5669;  -- /usr/include/gsl/gsl_fft_complex.h:84
      twiddle : gsl_fft_complex_wavetable_array5671;  -- /usr/include/gsl/gsl_fft_complex.h:85
      trig : access GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;  -- /usr/include/gsl/gsl_fft_complex.h:86
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_fft_complex.h:88

   type gsl_fft_complex_workspace is record
      n : aliased size_t;  -- /usr/include/gsl/gsl_fft_complex.h:92
      scratch : access double;  -- /usr/include/gsl/gsl_fft_complex.h:93
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_fft_complex.h:95

   function gsl_fft_complex_wavetable_alloc (arg1 : size_t) return access gsl_fft_complex_wavetable  -- /usr/include/gsl/gsl_fft_complex.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_wavetable_alloc";

   procedure gsl_fft_complex_wavetable_free (wavetable : access gsl_fft_complex_wavetable)  -- /usr/include/gsl/gsl_fft_complex.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_wavetable_free";

   function gsl_fft_complex_workspace_alloc (arg1 : size_t) return access gsl_fft_complex_workspace  -- /usr/include/gsl/gsl_fft_complex.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_workspace_alloc";

   procedure gsl_fft_complex_workspace_free (workspace : access gsl_fft_complex_workspace)  -- /usr/include/gsl/gsl_fft_complex.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_workspace_free";

   function gsl_fft_complex_memcpy (dest : access gsl_fft_complex_wavetable; src : access gsl_fft_complex_wavetable) return int  -- /usr/include/gsl/gsl_fft_complex.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_memcpy";

   function gsl_fft_complex_forward
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : size_t;
      n : size_t;
      wavetable : access constant gsl_fft_complex_wavetable;
      work : access gsl_fft_complex_workspace) return int  -- /usr/include/gsl/gsl_fft_complex.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_forward";

   function gsl_fft_complex_backward
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : size_t;
      n : size_t;
      wavetable : access constant gsl_fft_complex_wavetable;
      work : access gsl_fft_complex_workspace) return int  -- /usr/include/gsl/gsl_fft_complex.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_backward";

   function gsl_fft_complex_inverse
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : size_t;
      n : size_t;
      wavetable : access constant gsl_fft_complex_wavetable;
      work : access gsl_fft_complex_workspace) return int  -- /usr/include/gsl/gsl_fft_complex.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_inverse";

   function gsl_fft_complex_transform
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : size_t;
      n : size_t;
      wavetable : access constant gsl_fft_complex_wavetable;
      work : access gsl_fft_complex_workspace;
      sign : GSL.Low_Level.gsl_gsl_fft_h.gsl_fft_direction) return int  -- /usr/include/gsl/gsl_fft_complex.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_transform";

end GSL.Low_Level.gsl_gsl_fft_complex_h;
