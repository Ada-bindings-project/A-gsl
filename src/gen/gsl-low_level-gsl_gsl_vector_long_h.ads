pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_block_long_h;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_vector_long_h is

  -- vector/gsl_vector_long.h
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

   type gsl_vector_long is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_vector_long.h:44
      stride : aliased size_t;  -- /usr/include/gsl/gsl_vector_long.h:45
      data : access long;  -- /usr/include/gsl/gsl_vector_long.h:46
      block : access GSL.Low_Level.gsl_gsl_block_long_h.gsl_block_long;  -- /usr/include/gsl/gsl_vector_long.h:47
      owner : aliased int;  -- /usr/include/gsl/gsl_vector_long.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_long.h:50

   type u_gsl_vector_long_view is record
      vector : aliased gsl_vector_long;  -- /usr/include/gsl/gsl_vector_long.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_long.h:55

   subtype gsl_vector_long_view is u_gsl_vector_long_view;  -- /usr/include/gsl/gsl_vector_long.h:57

   type u_gsl_vector_long_const_view is record
      vector : aliased gsl_vector_long;  -- /usr/include/gsl/gsl_vector_long.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_long.h:62

   subtype gsl_vector_long_const_view is u_gsl_vector_long_const_view;  -- /usr/include/gsl/gsl_vector_long.h:64

  -- Allocation  
   function gsl_vector_long_alloc (arg1 : size_t) return access gsl_vector_long  -- /usr/include/gsl/gsl_vector_long.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_alloc";

   function gsl_vector_long_calloc (arg1 : size_t) return access gsl_vector_long  -- /usr/include/gsl/gsl_vector_long.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_calloc";

   function gsl_vector_long_alloc_from_block
     (arg1 : access GSL.Low_Level.gsl_gsl_block_long_h.gsl_block_long;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t) return access gsl_vector_long  -- /usr/include/gsl/gsl_vector_long.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_alloc_from_block";

   function gsl_vector_long_alloc_from_vector
     (arg1 : access gsl_vector_long;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t) return access gsl_vector_long  -- /usr/include/gsl/gsl_vector_long.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_alloc_from_vector";

   procedure gsl_vector_long_free (v : access gsl_vector_long)  -- /usr/include/gsl/gsl_vector_long.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_free";

  -- Views  
   function gsl_vector_long_view_array (v : access long; n : size_t) return u_gsl_vector_long_view  -- /usr/include/gsl/gsl_vector_long.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_view_array";

   function gsl_vector_long_view_array_with_stride
     (base : access long;
      stride : size_t;
      n : size_t) return u_gsl_vector_long_view  -- /usr/include/gsl/gsl_vector_long.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_view_array_with_stride";

   function gsl_vector_long_const_view_array (v : access long; n : size_t) return u_gsl_vector_long_const_view  -- /usr/include/gsl/gsl_vector_long.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_const_view_array";

   function gsl_vector_long_const_view_array_with_stride
     (base : access long;
      stride : size_t;
      n : size_t) return u_gsl_vector_long_const_view  -- /usr/include/gsl/gsl_vector_long.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_const_view_array_with_stride";

   function gsl_vector_long_subvector
     (v : access gsl_vector_long;
      i : size_t;
      n : size_t) return u_gsl_vector_long_view  -- /usr/include/gsl/gsl_vector_long.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_subvector";

   function gsl_vector_long_subvector_with_stride
     (v : access gsl_vector_long;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_long_view  -- /usr/include/gsl/gsl_vector_long.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_subvector_with_stride";

   function gsl_vector_long_const_subvector
     (v : access constant gsl_vector_long;
      i : size_t;
      n : size_t) return u_gsl_vector_long_const_view  -- /usr/include/gsl/gsl_vector_long.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_const_subvector";

   function gsl_vector_long_const_subvector_with_stride
     (v : access constant gsl_vector_long;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_long_const_view  -- /usr/include/gsl/gsl_vector_long.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_const_subvector_with_stride";

  -- Operations  
   procedure gsl_vector_long_set_zero (v : access gsl_vector_long)  -- /usr/include/gsl/gsl_vector_long.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_set_zero";

   procedure gsl_vector_long_set_all (v : access gsl_vector_long; x : long)  -- /usr/include/gsl/gsl_vector_long.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_set_all";

   function gsl_vector_long_set_basis (v : access gsl_vector_long; i : size_t) return int  -- /usr/include/gsl/gsl_vector_long.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_set_basis";

   function gsl_vector_long_fread (stream : Interfaces.C_Streams.FILEs; v : access gsl_vector_long) return int  -- /usr/include/gsl/gsl_vector_long.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_fread";

   function gsl_vector_long_fwrite (stream : Interfaces.C_Streams.FILEs; v : access constant gsl_vector_long) return int  -- /usr/include/gsl/gsl_vector_long.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_fwrite";

   function gsl_vector_long_fscanf (stream : Interfaces.C_Streams.FILEs; v : access gsl_vector_long) return int  -- /usr/include/gsl/gsl_vector_long.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_fscanf";

   function gsl_vector_long_fprintf
     (stream : Interfaces.C_Streams.FILEs;
      v : access constant gsl_vector_long;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_vector_long.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_fprintf";

   function gsl_vector_long_memcpy (dest : access gsl_vector_long; src : access constant gsl_vector_long) return int  -- /usr/include/gsl/gsl_vector_long.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_memcpy";

   function gsl_vector_long_reverse (v : access gsl_vector_long) return int  -- /usr/include/gsl/gsl_vector_long.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_reverse";

   function gsl_vector_long_swap (v : access gsl_vector_long; w : access gsl_vector_long) return int  -- /usr/include/gsl/gsl_vector_long.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_swap";

   function gsl_vector_long_swap_elements
     (v : access gsl_vector_long;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_vector_long.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_swap_elements";

   function gsl_vector_long_max (v : access constant gsl_vector_long) return long  -- /usr/include/gsl/gsl_vector_long.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_max";

   function gsl_vector_long_min (v : access constant gsl_vector_long) return long  -- /usr/include/gsl/gsl_vector_long.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_min";

   procedure gsl_vector_long_minmax
     (v : access constant gsl_vector_long;
      min_out : access long;
      max_out : access long)  -- /usr/include/gsl/gsl_vector_long.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_minmax";

   function gsl_vector_long_max_index (v : access constant gsl_vector_long) return size_t  -- /usr/include/gsl/gsl_vector_long.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_max_index";

   function gsl_vector_long_min_index (v : access constant gsl_vector_long) return size_t  -- /usr/include/gsl/gsl_vector_long.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_min_index";

   procedure gsl_vector_long_minmax_index
     (v : access constant gsl_vector_long;
      imin : access size_t;
      imax : access size_t)  -- /usr/include/gsl/gsl_vector_long.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_minmax_index";

   function gsl_vector_long_add (a : access gsl_vector_long; b : access constant gsl_vector_long) return int  -- /usr/include/gsl/gsl_vector_long.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_add";

   function gsl_vector_long_sub (a : access gsl_vector_long; b : access constant gsl_vector_long) return int  -- /usr/include/gsl/gsl_vector_long.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_sub";

   function gsl_vector_long_mul (a : access gsl_vector_long; b : access constant gsl_vector_long) return int  -- /usr/include/gsl/gsl_vector_long.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_mul";

   function gsl_vector_long_div (a : access gsl_vector_long; b : access constant gsl_vector_long) return int  -- /usr/include/gsl/gsl_vector_long.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_div";

   function gsl_vector_long_scale (a : access gsl_vector_long; x : double) return int  -- /usr/include/gsl/gsl_vector_long.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_scale";

   function gsl_vector_long_add_constant (a : access gsl_vector_long; x : double) return int  -- /usr/include/gsl/gsl_vector_long.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_add_constant";

   function gsl_vector_long_equal (u : access constant gsl_vector_long; v : access constant gsl_vector_long) return int  -- /usr/include/gsl/gsl_vector_long.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_equal";

   function gsl_vector_long_isnull (v : access constant gsl_vector_long) return int  -- /usr/include/gsl/gsl_vector_long.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_isnull";

   function gsl_vector_long_ispos (v : access constant gsl_vector_long) return int  -- /usr/include/gsl/gsl_vector_long.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_ispos";

   function gsl_vector_long_isneg (v : access constant gsl_vector_long) return int  -- /usr/include/gsl/gsl_vector_long.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_isneg";

   function gsl_vector_long_isnonneg (v : access constant gsl_vector_long) return int  -- /usr/include/gsl/gsl_vector_long.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_isnonneg";

   function gsl_vector_long_get (v : access constant gsl_vector_long; i : size_t) return long  -- /usr/include/gsl/gsl_vector_long.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_get";

   procedure gsl_vector_long_set
     (v : access gsl_vector_long;
      i : size_t;
      x : long)  -- /usr/include/gsl/gsl_vector_long.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_set";

   function gsl_vector_long_ptr (arg1 : access gsl_vector_long; arg2 : size_t) return access long  -- /usr/include/gsl/gsl_vector_long.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_ptr";

   function gsl_vector_long_const_ptr (arg1 : access constant gsl_vector_long; arg2 : size_t) return access long  -- /usr/include/gsl/gsl_vector_long.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_const_ptr";

end GSL.Low_Level.gsl_gsl_vector_long_h;
