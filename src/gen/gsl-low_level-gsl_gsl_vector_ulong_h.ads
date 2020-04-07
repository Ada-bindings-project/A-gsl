pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_block_ulong_h;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_vector_ulong_h is

  -- vector/gsl_vector_ulong.h
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

   type gsl_vector_ulong is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_vector_ulong.h:44
      stride : aliased size_t;  -- /usr/include/gsl/gsl_vector_ulong.h:45
      data : access unsigned_long;  -- /usr/include/gsl/gsl_vector_ulong.h:46
      block : access GSL.Low_Level.gsl_gsl_block_ulong_h.gsl_block_ulong;  -- /usr/include/gsl/gsl_vector_ulong.h:47
      owner : aliased int;  -- /usr/include/gsl/gsl_vector_ulong.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_ulong.h:50

   type u_gsl_vector_ulong_view is record
      vector : aliased gsl_vector_ulong;  -- /usr/include/gsl/gsl_vector_ulong.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_ulong.h:55

   subtype gsl_vector_ulong_view is u_gsl_vector_ulong_view;  -- /usr/include/gsl/gsl_vector_ulong.h:57

   type u_gsl_vector_ulong_const_view is record
      vector : aliased gsl_vector_ulong;  -- /usr/include/gsl/gsl_vector_ulong.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_ulong.h:62

   subtype gsl_vector_ulong_const_view is u_gsl_vector_ulong_const_view;  -- /usr/include/gsl/gsl_vector_ulong.h:64

  -- Allocation  
   function gsl_vector_ulong_alloc (arg1 : size_t) return access gsl_vector_ulong  -- /usr/include/gsl/gsl_vector_ulong.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_alloc";

   function gsl_vector_ulong_calloc (arg1 : size_t) return access gsl_vector_ulong  -- /usr/include/gsl/gsl_vector_ulong.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_calloc";

   function gsl_vector_ulong_alloc_from_block
     (arg1 : access GSL.Low_Level.gsl_gsl_block_ulong_h.gsl_block_ulong;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t) return access gsl_vector_ulong  -- /usr/include/gsl/gsl_vector_ulong.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_alloc_from_block";

   function gsl_vector_ulong_alloc_from_vector
     (arg1 : access gsl_vector_ulong;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t) return access gsl_vector_ulong  -- /usr/include/gsl/gsl_vector_ulong.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_alloc_from_vector";

   procedure gsl_vector_ulong_free (v : access gsl_vector_ulong)  -- /usr/include/gsl/gsl_vector_ulong.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_free";

  -- Views  
   function gsl_vector_ulong_view_array (v : access unsigned_long; n : size_t) return u_gsl_vector_ulong_view  -- /usr/include/gsl/gsl_vector_ulong.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_view_array";

   function gsl_vector_ulong_view_array_with_stride
     (base : access unsigned_long;
      stride : size_t;
      n : size_t) return u_gsl_vector_ulong_view  -- /usr/include/gsl/gsl_vector_ulong.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_view_array_with_stride";

   function gsl_vector_ulong_const_view_array (v : access unsigned_long; n : size_t) return u_gsl_vector_ulong_const_view  -- /usr/include/gsl/gsl_vector_ulong.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_const_view_array";

   function gsl_vector_ulong_const_view_array_with_stride
     (base : access unsigned_long;
      stride : size_t;
      n : size_t) return u_gsl_vector_ulong_const_view  -- /usr/include/gsl/gsl_vector_ulong.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_const_view_array_with_stride";

   function gsl_vector_ulong_subvector
     (v : access gsl_vector_ulong;
      i : size_t;
      n : size_t) return u_gsl_vector_ulong_view  -- /usr/include/gsl/gsl_vector_ulong.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_subvector";

   function gsl_vector_ulong_subvector_with_stride
     (v : access gsl_vector_ulong;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_ulong_view  -- /usr/include/gsl/gsl_vector_ulong.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_subvector_with_stride";

   function gsl_vector_ulong_const_subvector
     (v : access constant gsl_vector_ulong;
      i : size_t;
      n : size_t) return u_gsl_vector_ulong_const_view  -- /usr/include/gsl/gsl_vector_ulong.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_const_subvector";

   function gsl_vector_ulong_const_subvector_with_stride
     (v : access constant gsl_vector_ulong;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_ulong_const_view  -- /usr/include/gsl/gsl_vector_ulong.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_const_subvector_with_stride";

  -- Operations  
   procedure gsl_vector_ulong_set_zero (v : access gsl_vector_ulong)  -- /usr/include/gsl/gsl_vector_ulong.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_set_zero";

   procedure gsl_vector_ulong_set_all (v : access gsl_vector_ulong; x : unsigned_long)  -- /usr/include/gsl/gsl_vector_ulong.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_set_all";

   function gsl_vector_ulong_set_basis (v : access gsl_vector_ulong; i : size_t) return int  -- /usr/include/gsl/gsl_vector_ulong.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_set_basis";

   function gsl_vector_ulong_fread (stream : Interfaces.C_Streams.FILEs; v : access gsl_vector_ulong) return int  -- /usr/include/gsl/gsl_vector_ulong.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_fread";

   function gsl_vector_ulong_fwrite (stream : Interfaces.C_Streams.FILEs; v : access constant gsl_vector_ulong) return int  -- /usr/include/gsl/gsl_vector_ulong.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_fwrite";

   function gsl_vector_ulong_fscanf (stream : Interfaces.C_Streams.FILEs; v : access gsl_vector_ulong) return int  -- /usr/include/gsl/gsl_vector_ulong.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_fscanf";

   function gsl_vector_ulong_fprintf
     (stream : Interfaces.C_Streams.FILEs;
      v : access constant gsl_vector_ulong;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_vector_ulong.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_fprintf";

   function gsl_vector_ulong_memcpy (dest : access gsl_vector_ulong; src : access constant gsl_vector_ulong) return int  -- /usr/include/gsl/gsl_vector_ulong.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_memcpy";

   function gsl_vector_ulong_reverse (v : access gsl_vector_ulong) return int  -- /usr/include/gsl/gsl_vector_ulong.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_reverse";

   function gsl_vector_ulong_swap (v : access gsl_vector_ulong; w : access gsl_vector_ulong) return int  -- /usr/include/gsl/gsl_vector_ulong.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_swap";

   function gsl_vector_ulong_swap_elements
     (v : access gsl_vector_ulong;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_vector_ulong.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_swap_elements";

   function gsl_vector_ulong_max (v : access constant gsl_vector_ulong) return unsigned_long  -- /usr/include/gsl/gsl_vector_ulong.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_max";

   function gsl_vector_ulong_min (v : access constant gsl_vector_ulong) return unsigned_long  -- /usr/include/gsl/gsl_vector_ulong.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_min";

   procedure gsl_vector_ulong_minmax
     (v : access constant gsl_vector_ulong;
      min_out : access unsigned_long;
      max_out : access unsigned_long)  -- /usr/include/gsl/gsl_vector_ulong.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_minmax";

   function gsl_vector_ulong_max_index (v : access constant gsl_vector_ulong) return size_t  -- /usr/include/gsl/gsl_vector_ulong.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_max_index";

   function gsl_vector_ulong_min_index (v : access constant gsl_vector_ulong) return size_t  -- /usr/include/gsl/gsl_vector_ulong.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_min_index";

   procedure gsl_vector_ulong_minmax_index
     (v : access constant gsl_vector_ulong;
      imin : access size_t;
      imax : access size_t)  -- /usr/include/gsl/gsl_vector_ulong.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_minmax_index";

   function gsl_vector_ulong_add (a : access gsl_vector_ulong; b : access constant gsl_vector_ulong) return int  -- /usr/include/gsl/gsl_vector_ulong.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_add";

   function gsl_vector_ulong_sub (a : access gsl_vector_ulong; b : access constant gsl_vector_ulong) return int  -- /usr/include/gsl/gsl_vector_ulong.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_sub";

   function gsl_vector_ulong_mul (a : access gsl_vector_ulong; b : access constant gsl_vector_ulong) return int  -- /usr/include/gsl/gsl_vector_ulong.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_mul";

   function gsl_vector_ulong_div (a : access gsl_vector_ulong; b : access constant gsl_vector_ulong) return int  -- /usr/include/gsl/gsl_vector_ulong.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_div";

   function gsl_vector_ulong_scale (a : access gsl_vector_ulong; x : double) return int  -- /usr/include/gsl/gsl_vector_ulong.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_scale";

   function gsl_vector_ulong_add_constant (a : access gsl_vector_ulong; x : double) return int  -- /usr/include/gsl/gsl_vector_ulong.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_add_constant";

   function gsl_vector_ulong_equal (u : access constant gsl_vector_ulong; v : access constant gsl_vector_ulong) return int  -- /usr/include/gsl/gsl_vector_ulong.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_equal";

   function gsl_vector_ulong_isnull (v : access constant gsl_vector_ulong) return int  -- /usr/include/gsl/gsl_vector_ulong.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_isnull";

   function gsl_vector_ulong_ispos (v : access constant gsl_vector_ulong) return int  -- /usr/include/gsl/gsl_vector_ulong.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_ispos";

   function gsl_vector_ulong_isneg (v : access constant gsl_vector_ulong) return int  -- /usr/include/gsl/gsl_vector_ulong.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_isneg";

   function gsl_vector_ulong_isnonneg (v : access constant gsl_vector_ulong) return int  -- /usr/include/gsl/gsl_vector_ulong.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_isnonneg";

   function gsl_vector_ulong_get (v : access constant gsl_vector_ulong; i : size_t) return unsigned_long  -- /usr/include/gsl/gsl_vector_ulong.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_get";

   procedure gsl_vector_ulong_set
     (v : access gsl_vector_ulong;
      i : size_t;
      x : unsigned_long)  -- /usr/include/gsl/gsl_vector_ulong.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_set";

   function gsl_vector_ulong_ptr (arg1 : access gsl_vector_ulong; arg2 : size_t) return access unsigned_long  -- /usr/include/gsl/gsl_vector_ulong.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_ptr";

   function gsl_vector_ulong_const_ptr (arg1 : access constant gsl_vector_ulong; arg2 : size_t) return access unsigned_long  -- /usr/include/gsl/gsl_vector_ulong.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ulong_const_ptr";

end GSL.Low_Level.gsl_gsl_vector_ulong_h;
