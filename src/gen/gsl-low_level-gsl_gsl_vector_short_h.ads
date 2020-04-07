pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_block_short_h;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_vector_short_h is

  -- vector/gsl_vector_short.h
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

   type gsl_vector_short is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_vector_short.h:44
      stride : aliased size_t;  -- /usr/include/gsl/gsl_vector_short.h:45
      data : access short;  -- /usr/include/gsl/gsl_vector_short.h:46
      block : access GSL.Low_Level.gsl_gsl_block_short_h.gsl_block_short;  -- /usr/include/gsl/gsl_vector_short.h:47
      owner : aliased int;  -- /usr/include/gsl/gsl_vector_short.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_short.h:50

   type u_gsl_vector_short_view is record
      vector : aliased gsl_vector_short;  -- /usr/include/gsl/gsl_vector_short.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_short.h:55

   subtype gsl_vector_short_view is u_gsl_vector_short_view;  -- /usr/include/gsl/gsl_vector_short.h:57

   type u_gsl_vector_short_const_view is record
      vector : aliased gsl_vector_short;  -- /usr/include/gsl/gsl_vector_short.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_short.h:62

   subtype gsl_vector_short_const_view is u_gsl_vector_short_const_view;  -- /usr/include/gsl/gsl_vector_short.h:64

  -- Allocation  
   function gsl_vector_short_alloc (arg1 : size_t) return access gsl_vector_short  -- /usr/include/gsl/gsl_vector_short.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_alloc";

   function gsl_vector_short_calloc (arg1 : size_t) return access gsl_vector_short  -- /usr/include/gsl/gsl_vector_short.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_calloc";

   function gsl_vector_short_alloc_from_block
     (arg1 : access GSL.Low_Level.gsl_gsl_block_short_h.gsl_block_short;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t) return access gsl_vector_short  -- /usr/include/gsl/gsl_vector_short.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_alloc_from_block";

   function gsl_vector_short_alloc_from_vector
     (arg1 : access gsl_vector_short;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t) return access gsl_vector_short  -- /usr/include/gsl/gsl_vector_short.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_alloc_from_vector";

   procedure gsl_vector_short_free (v : access gsl_vector_short)  -- /usr/include/gsl/gsl_vector_short.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_free";

  -- Views  
   function gsl_vector_short_view_array (v : access short; n : size_t) return u_gsl_vector_short_view  -- /usr/include/gsl/gsl_vector_short.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_view_array";

   function gsl_vector_short_view_array_with_stride
     (base : access short;
      stride : size_t;
      n : size_t) return u_gsl_vector_short_view  -- /usr/include/gsl/gsl_vector_short.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_view_array_with_stride";

   function gsl_vector_short_const_view_array (v : access short; n : size_t) return u_gsl_vector_short_const_view  -- /usr/include/gsl/gsl_vector_short.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_const_view_array";

   function gsl_vector_short_const_view_array_with_stride
     (base : access short;
      stride : size_t;
      n : size_t) return u_gsl_vector_short_const_view  -- /usr/include/gsl/gsl_vector_short.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_const_view_array_with_stride";

   function gsl_vector_short_subvector
     (v : access gsl_vector_short;
      i : size_t;
      n : size_t) return u_gsl_vector_short_view  -- /usr/include/gsl/gsl_vector_short.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_subvector";

   function gsl_vector_short_subvector_with_stride
     (v : access gsl_vector_short;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_short_view  -- /usr/include/gsl/gsl_vector_short.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_subvector_with_stride";

   function gsl_vector_short_const_subvector
     (v : access constant gsl_vector_short;
      i : size_t;
      n : size_t) return u_gsl_vector_short_const_view  -- /usr/include/gsl/gsl_vector_short.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_const_subvector";

   function gsl_vector_short_const_subvector_with_stride
     (v : access constant gsl_vector_short;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_short_const_view  -- /usr/include/gsl/gsl_vector_short.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_const_subvector_with_stride";

  -- Operations  
   procedure gsl_vector_short_set_zero (v : access gsl_vector_short)  -- /usr/include/gsl/gsl_vector_short.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_set_zero";

   procedure gsl_vector_short_set_all (v : access gsl_vector_short; x : short)  -- /usr/include/gsl/gsl_vector_short.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_set_all";

   function gsl_vector_short_set_basis (v : access gsl_vector_short; i : size_t) return int  -- /usr/include/gsl/gsl_vector_short.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_set_basis";

   function gsl_vector_short_fread (stream : Interfaces.C_Streams.FILEs; v : access gsl_vector_short) return int  -- /usr/include/gsl/gsl_vector_short.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_fread";

   function gsl_vector_short_fwrite (stream : Interfaces.C_Streams.FILEs; v : access constant gsl_vector_short) return int  -- /usr/include/gsl/gsl_vector_short.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_fwrite";

   function gsl_vector_short_fscanf (stream : Interfaces.C_Streams.FILEs; v : access gsl_vector_short) return int  -- /usr/include/gsl/gsl_vector_short.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_fscanf";

   function gsl_vector_short_fprintf
     (stream : Interfaces.C_Streams.FILEs;
      v : access constant gsl_vector_short;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_vector_short.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_fprintf";

   function gsl_vector_short_memcpy (dest : access gsl_vector_short; src : access constant gsl_vector_short) return int  -- /usr/include/gsl/gsl_vector_short.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_memcpy";

   function gsl_vector_short_reverse (v : access gsl_vector_short) return int  -- /usr/include/gsl/gsl_vector_short.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_reverse";

   function gsl_vector_short_swap (v : access gsl_vector_short; w : access gsl_vector_short) return int  -- /usr/include/gsl/gsl_vector_short.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_swap";

   function gsl_vector_short_swap_elements
     (v : access gsl_vector_short;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_vector_short.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_swap_elements";

   function gsl_vector_short_max (v : access constant gsl_vector_short) return short  -- /usr/include/gsl/gsl_vector_short.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_max";

   function gsl_vector_short_min (v : access constant gsl_vector_short) return short  -- /usr/include/gsl/gsl_vector_short.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_min";

   procedure gsl_vector_short_minmax
     (v : access constant gsl_vector_short;
      min_out : access short;
      max_out : access short)  -- /usr/include/gsl/gsl_vector_short.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_minmax";

   function gsl_vector_short_max_index (v : access constant gsl_vector_short) return size_t  -- /usr/include/gsl/gsl_vector_short.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_max_index";

   function gsl_vector_short_min_index (v : access constant gsl_vector_short) return size_t  -- /usr/include/gsl/gsl_vector_short.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_min_index";

   procedure gsl_vector_short_minmax_index
     (v : access constant gsl_vector_short;
      imin : access size_t;
      imax : access size_t)  -- /usr/include/gsl/gsl_vector_short.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_minmax_index";

   function gsl_vector_short_add (a : access gsl_vector_short; b : access constant gsl_vector_short) return int  -- /usr/include/gsl/gsl_vector_short.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_add";

   function gsl_vector_short_sub (a : access gsl_vector_short; b : access constant gsl_vector_short) return int  -- /usr/include/gsl/gsl_vector_short.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_sub";

   function gsl_vector_short_mul (a : access gsl_vector_short; b : access constant gsl_vector_short) return int  -- /usr/include/gsl/gsl_vector_short.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_mul";

   function gsl_vector_short_div (a : access gsl_vector_short; b : access constant gsl_vector_short) return int  -- /usr/include/gsl/gsl_vector_short.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_div";

   function gsl_vector_short_scale (a : access gsl_vector_short; x : double) return int  -- /usr/include/gsl/gsl_vector_short.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_scale";

   function gsl_vector_short_add_constant (a : access gsl_vector_short; x : double) return int  -- /usr/include/gsl/gsl_vector_short.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_add_constant";

   function gsl_vector_short_equal (u : access constant gsl_vector_short; v : access constant gsl_vector_short) return int  -- /usr/include/gsl/gsl_vector_short.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_equal";

   function gsl_vector_short_isnull (v : access constant gsl_vector_short) return int  -- /usr/include/gsl/gsl_vector_short.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_isnull";

   function gsl_vector_short_ispos (v : access constant gsl_vector_short) return int  -- /usr/include/gsl/gsl_vector_short.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_ispos";

   function gsl_vector_short_isneg (v : access constant gsl_vector_short) return int  -- /usr/include/gsl/gsl_vector_short.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_isneg";

   function gsl_vector_short_isnonneg (v : access constant gsl_vector_short) return int  -- /usr/include/gsl/gsl_vector_short.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_isnonneg";

   function gsl_vector_short_get (v : access constant gsl_vector_short; i : size_t) return short  -- /usr/include/gsl/gsl_vector_short.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_get";

   procedure gsl_vector_short_set
     (v : access gsl_vector_short;
      i : size_t;
      x : short)  -- /usr/include/gsl/gsl_vector_short.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_set";

   function gsl_vector_short_ptr (arg1 : access gsl_vector_short; arg2 : size_t) return access short  -- /usr/include/gsl/gsl_vector_short.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_ptr";

   function gsl_vector_short_const_ptr (arg1 : access constant gsl_vector_short; arg2 : size_t) return access short  -- /usr/include/gsl/gsl_vector_short.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_const_ptr";

end GSL.Low_Level.gsl_gsl_vector_short_h;
