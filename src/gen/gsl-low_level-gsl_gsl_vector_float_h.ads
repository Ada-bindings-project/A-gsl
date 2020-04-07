pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_block_float_h;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_vector_float_h is

  -- vector/gsl_vector_float.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2007 Gerard Jungman, Brian Gough
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

   type gsl_vector_float is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_vector_float.h:44
      stride : aliased size_t;  -- /usr/include/gsl/gsl_vector_float.h:45
      data : access float;  -- /usr/include/gsl/gsl_vector_float.h:46
      block : access GSL.Low_Level.gsl_gsl_block_float_h.gsl_block_float;  -- /usr/include/gsl/gsl_vector_float.h:47
      owner : aliased int;  -- /usr/include/gsl/gsl_vector_float.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_float.h:50

   type u_gsl_vector_float_view is record
      vector : aliased gsl_vector_float;  -- /usr/include/gsl/gsl_vector_float.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_float.h:55

   subtype gsl_vector_float_view is u_gsl_vector_float_view;  -- /usr/include/gsl/gsl_vector_float.h:57

   type u_gsl_vector_float_const_view is record
      vector : aliased gsl_vector_float;  -- /usr/include/gsl/gsl_vector_float.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_float.h:62

   subtype gsl_vector_float_const_view is u_gsl_vector_float_const_view;  -- /usr/include/gsl/gsl_vector_float.h:64

  -- Allocation  
   function gsl_vector_float_alloc (arg1 : size_t) return access gsl_vector_float  -- /usr/include/gsl/gsl_vector_float.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_alloc";

   function gsl_vector_float_calloc (arg1 : size_t) return access gsl_vector_float  -- /usr/include/gsl/gsl_vector_float.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_calloc";

   function gsl_vector_float_alloc_from_block
     (arg1 : access GSL.Low_Level.gsl_gsl_block_float_h.gsl_block_float;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t) return access gsl_vector_float  -- /usr/include/gsl/gsl_vector_float.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_alloc_from_block";

   function gsl_vector_float_alloc_from_vector
     (arg1 : access gsl_vector_float;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t) return access gsl_vector_float  -- /usr/include/gsl/gsl_vector_float.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_alloc_from_vector";

   procedure gsl_vector_float_free (v : access gsl_vector_float)  -- /usr/include/gsl/gsl_vector_float.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_free";

  -- Views  
   function gsl_vector_float_view_array (v : access float; n : size_t) return u_gsl_vector_float_view  -- /usr/include/gsl/gsl_vector_float.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_view_array";

   function gsl_vector_float_view_array_with_stride
     (base : access float;
      stride : size_t;
      n : size_t) return u_gsl_vector_float_view  -- /usr/include/gsl/gsl_vector_float.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_view_array_with_stride";

   function gsl_vector_float_const_view_array (v : access float; n : size_t) return u_gsl_vector_float_const_view  -- /usr/include/gsl/gsl_vector_float.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_const_view_array";

   function gsl_vector_float_const_view_array_with_stride
     (base : access float;
      stride : size_t;
      n : size_t) return u_gsl_vector_float_const_view  -- /usr/include/gsl/gsl_vector_float.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_const_view_array_with_stride";

   function gsl_vector_float_subvector
     (v : access gsl_vector_float;
      i : size_t;
      n : size_t) return u_gsl_vector_float_view  -- /usr/include/gsl/gsl_vector_float.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_subvector";

   function gsl_vector_float_subvector_with_stride
     (v : access gsl_vector_float;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_float_view  -- /usr/include/gsl/gsl_vector_float.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_subvector_with_stride";

   function gsl_vector_float_const_subvector
     (v : access constant gsl_vector_float;
      i : size_t;
      n : size_t) return u_gsl_vector_float_const_view  -- /usr/include/gsl/gsl_vector_float.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_const_subvector";

   function gsl_vector_float_const_subvector_with_stride
     (v : access constant gsl_vector_float;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_float_const_view  -- /usr/include/gsl/gsl_vector_float.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_const_subvector_with_stride";

  -- Operations  
   procedure gsl_vector_float_set_zero (v : access gsl_vector_float)  -- /usr/include/gsl/gsl_vector_float.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_set_zero";

   procedure gsl_vector_float_set_all (v : access gsl_vector_float; x : float)  -- /usr/include/gsl/gsl_vector_float.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_set_all";

   function gsl_vector_float_set_basis (v : access gsl_vector_float; i : size_t) return int  -- /usr/include/gsl/gsl_vector_float.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_set_basis";

   function gsl_vector_float_fread (stream : Interfaces.C_Streams.FILEs; v : access gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_fread";

   function gsl_vector_float_fwrite (stream : Interfaces.C_Streams.FILEs; v : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_fwrite";

   function gsl_vector_float_fscanf (stream : Interfaces.C_Streams.FILEs; v : access gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_fscanf";

   function gsl_vector_float_fprintf
     (stream : Interfaces.C_Streams.FILEs;
      v : access constant gsl_vector_float;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_vector_float.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_fprintf";

   function gsl_vector_float_memcpy (dest : access gsl_vector_float; src : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_memcpy";

   function gsl_vector_float_reverse (v : access gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_reverse";

   function gsl_vector_float_swap (v : access gsl_vector_float; w : access gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_swap";

   function gsl_vector_float_swap_elements
     (v : access gsl_vector_float;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_vector_float.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_swap_elements";

   function gsl_vector_float_max (v : access constant gsl_vector_float) return float  -- /usr/include/gsl/gsl_vector_float.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_max";

   function gsl_vector_float_min (v : access constant gsl_vector_float) return float  -- /usr/include/gsl/gsl_vector_float.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_min";

   procedure gsl_vector_float_minmax
     (v : access constant gsl_vector_float;
      min_out : access float;
      max_out : access float)  -- /usr/include/gsl/gsl_vector_float.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_minmax";

   function gsl_vector_float_max_index (v : access constant gsl_vector_float) return size_t  -- /usr/include/gsl/gsl_vector_float.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_max_index";

   function gsl_vector_float_min_index (v : access constant gsl_vector_float) return size_t  -- /usr/include/gsl/gsl_vector_float.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_min_index";

   procedure gsl_vector_float_minmax_index
     (v : access constant gsl_vector_float;
      imin : access size_t;
      imax : access size_t)  -- /usr/include/gsl/gsl_vector_float.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_minmax_index";

   function gsl_vector_float_add (a : access gsl_vector_float; b : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_add";

   function gsl_vector_float_sub (a : access gsl_vector_float; b : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_sub";

   function gsl_vector_float_mul (a : access gsl_vector_float; b : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_mul";

   function gsl_vector_float_div (a : access gsl_vector_float; b : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_div";

   function gsl_vector_float_scale (a : access gsl_vector_float; x : double) return int  -- /usr/include/gsl/gsl_vector_float.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_scale";

   function gsl_vector_float_add_constant (a : access gsl_vector_float; x : double) return int  -- /usr/include/gsl/gsl_vector_float.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_add_constant";

   function gsl_vector_float_equal (u : access constant gsl_vector_float; v : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_equal";

   function gsl_vector_float_isnull (v : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_isnull";

   function gsl_vector_float_ispos (v : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_ispos";

   function gsl_vector_float_isneg (v : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_isneg";

   function gsl_vector_float_isnonneg (v : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_isnonneg";

   function gsl_vector_float_get (v : access constant gsl_vector_float; i : size_t) return float  -- /usr/include/gsl/gsl_vector_float.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_get";

   procedure gsl_vector_float_set
     (v : access gsl_vector_float;
      i : size_t;
      x : float)  -- /usr/include/gsl/gsl_vector_float.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_set";

   function gsl_vector_float_ptr (arg1 : access gsl_vector_float; arg2 : size_t) return access float  -- /usr/include/gsl/gsl_vector_float.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_ptr";

   function gsl_vector_float_const_ptr (arg1 : access constant gsl_vector_float; arg2 : size_t) return access float  -- /usr/include/gsl/gsl_vector_float.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_const_ptr";

end GSL.Low_Level.gsl_gsl_vector_float_h;
