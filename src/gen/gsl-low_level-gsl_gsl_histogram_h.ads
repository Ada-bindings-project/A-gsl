pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_histogram_h is

  -- histogram/gsl_histogram.h
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

   type gsl_histogram is record
      n : aliased size_t;  -- /usr/include/gsl/gsl_histogram.h:39
      c_range : access double;  -- /usr/include/gsl/gsl_histogram.h:40
      bin : access double;  -- /usr/include/gsl/gsl_histogram.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_histogram.h:42

   type gsl_histogram_pdf is record
      n : aliased size_t;  -- /usr/include/gsl/gsl_histogram.h:45
      c_range : access double;  -- /usr/include/gsl/gsl_histogram.h:46
      sum : access double;  -- /usr/include/gsl/gsl_histogram.h:47
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_histogram.h:48

   function gsl_histogram_alloc (arg1 : size_t) return access gsl_histogram  -- /usr/include/gsl/gsl_histogram.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_alloc";

   function gsl_histogram_calloc (arg1 : size_t) return access gsl_histogram  -- /usr/include/gsl/gsl_histogram.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_calloc";

   function gsl_histogram_calloc_uniform
     (arg1 : size_t;
      arg2 : double;
      arg3 : double) return access gsl_histogram  -- /usr/include/gsl/gsl_histogram.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_calloc_uniform";

   procedure gsl_histogram_free (h : access gsl_histogram)  -- /usr/include/gsl/gsl_histogram.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_free";

   function gsl_histogram_increment (h : access gsl_histogram; x : double) return int  -- /usr/include/gsl/gsl_histogram.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_increment";

   function gsl_histogram_accumulate
     (h : access gsl_histogram;
      x : double;
      weight : double) return int  -- /usr/include/gsl/gsl_histogram.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_accumulate";

   function gsl_histogram_find
     (h : access constant gsl_histogram;
      x : double;
      i : access size_t) return int  -- /usr/include/gsl/gsl_histogram.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_find";

   function gsl_histogram_get (h : access constant gsl_histogram; i : size_t) return double  -- /usr/include/gsl/gsl_histogram.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_get";

   function gsl_histogram_get_range
     (h : access constant gsl_histogram;
      i : size_t;
      lower : access double;
      upper : access double) return int  -- /usr/include/gsl/gsl_histogram.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_get_range";

   function gsl_histogram_max (h : access constant gsl_histogram) return double  -- /usr/include/gsl/gsl_histogram.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_max";

   function gsl_histogram_min (h : access constant gsl_histogram) return double  -- /usr/include/gsl/gsl_histogram.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_min";

   function gsl_histogram_bins (h : access constant gsl_histogram) return size_t  -- /usr/include/gsl/gsl_histogram.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_bins";

   procedure gsl_histogram_reset (h : access gsl_histogram)  -- /usr/include/gsl/gsl_histogram.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_reset";

   function gsl_histogram_calloc_range (arg1 : size_t; arg2 : access double) return access gsl_histogram  -- /usr/include/gsl/gsl_histogram.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_calloc_range";

   function gsl_histogram_set_ranges
     (h : access gsl_histogram;
      c_range : access double;
      size : size_t) return int  -- /usr/include/gsl/gsl_histogram.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_set_ranges";

   function gsl_histogram_set_ranges_uniform
     (h : access gsl_histogram;
      xmin : double;
      xmax : double) return int  -- /usr/include/gsl/gsl_histogram.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_set_ranges_uniform";

   function gsl_histogram_memcpy (dest : access gsl_histogram; source : access constant gsl_histogram) return int  -- /usr/include/gsl/gsl_histogram.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_memcpy";

   function gsl_histogram_clone (arg1 : access constant gsl_histogram) return access gsl_histogram  -- /usr/include/gsl/gsl_histogram.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_clone";

   function gsl_histogram_max_val (h : access constant gsl_histogram) return double  -- /usr/include/gsl/gsl_histogram.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_max_val";

   function gsl_histogram_max_bin (h : access constant gsl_histogram) return size_t  -- /usr/include/gsl/gsl_histogram.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_max_bin";

   function gsl_histogram_min_val (h : access constant gsl_histogram) return double  -- /usr/include/gsl/gsl_histogram.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_min_val";

   function gsl_histogram_min_bin (h : access constant gsl_histogram) return size_t  -- /usr/include/gsl/gsl_histogram.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_min_bin";

   function gsl_histogram_equal_bins_p (h1 : access constant gsl_histogram; h2 : access constant gsl_histogram) return int  -- /usr/include/gsl/gsl_histogram.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_equal_bins_p";

   function gsl_histogram_add (h1 : access gsl_histogram; h2 : access constant gsl_histogram) return int  -- /usr/include/gsl/gsl_histogram.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_add";

   function gsl_histogram_sub (h1 : access gsl_histogram; h2 : access constant gsl_histogram) return int  -- /usr/include/gsl/gsl_histogram.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_sub";

   function gsl_histogram_mul (h1 : access gsl_histogram; h2 : access constant gsl_histogram) return int  -- /usr/include/gsl/gsl_histogram.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_mul";

   function gsl_histogram_div (h1 : access gsl_histogram; h2 : access constant gsl_histogram) return int  -- /usr/include/gsl/gsl_histogram.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_div";

   function gsl_histogram_scale (h : access gsl_histogram; scale : double) return int  -- /usr/include/gsl/gsl_histogram.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_scale";

   function gsl_histogram_shift (h : access gsl_histogram; shift : double) return int  -- /usr/include/gsl/gsl_histogram.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_shift";

   function gsl_histogram_sigma (h : access constant gsl_histogram) return double  -- /usr/include/gsl/gsl_histogram.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_sigma";

   function gsl_histogram_mean (h : access constant gsl_histogram) return double  -- /usr/include/gsl/gsl_histogram.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_mean";

   function gsl_histogram_sum (h : access constant gsl_histogram) return double  -- /usr/include/gsl/gsl_histogram.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_sum";

   function gsl_histogram_fwrite (stream : access Interfaces.C_Streams.FILEs; h : access constant gsl_histogram) return int  -- /usr/include/gsl/gsl_histogram.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_fwrite";

   function gsl_histogram_fread (stream : access Interfaces.C_Streams.FILEs; h : access gsl_histogram) return int  -- /usr/include/gsl/gsl_histogram.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_fread";

   function gsl_histogram_fprintf
     (stream : access Interfaces.C_Streams.FILEs;
      h : access constant gsl_histogram;
      range_format : Interfaces.C.Strings.chars_ptr;
      bin_format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_histogram.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_fprintf";

   function gsl_histogram_fscanf (stream : access Interfaces.C_Streams.FILEs; h : access gsl_histogram) return int  -- /usr/include/gsl/gsl_histogram.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_fscanf";

   function gsl_histogram_pdf_alloc (arg1 : size_t) return access gsl_histogram_pdf  -- /usr/include/gsl/gsl_histogram.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_pdf_alloc";

   function gsl_histogram_pdf_init (p : access gsl_histogram_pdf; h : access constant gsl_histogram) return int  -- /usr/include/gsl/gsl_histogram.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_pdf_init";

   procedure gsl_histogram_pdf_free (p : access gsl_histogram_pdf)  -- /usr/include/gsl/gsl_histogram.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_pdf_free";

   function gsl_histogram_pdf_sample (p : access constant gsl_histogram_pdf; r : double) return double  -- /usr/include/gsl/gsl_histogram.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram_pdf_sample";

end GSL.Low_Level.gsl_gsl_histogram_h;
