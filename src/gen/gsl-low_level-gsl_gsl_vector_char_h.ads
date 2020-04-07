pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;
with GSL.Low_Level.gsl_gsl_block_char_h;
with Interfaces.C_Streams;

package GSL.Low_Level.gsl_gsl_vector_char_h is

  -- vector/gsl_vector_char.h
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

   type gsl_vector_char is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_vector_char.h:44
      stride : aliased size_t;  -- /usr/include/gsl/gsl_vector_char.h:45
      data : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_vector_char.h:46
      block : access GSL.Low_Level.gsl_gsl_block_char_h.gsl_block_char;  -- /usr/include/gsl/gsl_vector_char.h:47
      owner : aliased int;  -- /usr/include/gsl/gsl_vector_char.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_char.h:50

   type u_gsl_vector_char_view is record
      vector : aliased gsl_vector_char;  -- /usr/include/gsl/gsl_vector_char.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_char.h:55

   subtype gsl_vector_char_view is u_gsl_vector_char_view;  -- /usr/include/gsl/gsl_vector_char.h:57

   type u_gsl_vector_char_const_view is record
      vector : aliased gsl_vector_char;  -- /usr/include/gsl/gsl_vector_char.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_char.h:62

   subtype gsl_vector_char_const_view is u_gsl_vector_char_const_view;  -- /usr/include/gsl/gsl_vector_char.h:64

  -- Allocation  
   function gsl_vector_char_alloc (arg1 : size_t) return access gsl_vector_char  -- /usr/include/gsl/gsl_vector_char.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_alloc";

   function gsl_vector_char_calloc (arg1 : size_t) return access gsl_vector_char  -- /usr/include/gsl/gsl_vector_char.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_calloc";

   function gsl_vector_char_alloc_from_block
     (arg1 : access GSL.Low_Level.gsl_gsl_block_char_h.gsl_block_char;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t) return access gsl_vector_char  -- /usr/include/gsl/gsl_vector_char.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_alloc_from_block";

   function gsl_vector_char_alloc_from_vector
     (arg1 : access gsl_vector_char;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t) return access gsl_vector_char  -- /usr/include/gsl/gsl_vector_char.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_alloc_from_vector";

   procedure gsl_vector_char_free (v : access gsl_vector_char)  -- /usr/include/gsl/gsl_vector_char.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_free";

  -- Views  
   function gsl_vector_char_view_array (v : Interfaces.C.Strings.chars_ptr; n : size_t) return u_gsl_vector_char_view  -- /usr/include/gsl/gsl_vector_char.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_view_array";

   function gsl_vector_char_view_array_with_stride
     (base : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return u_gsl_vector_char_view  -- /usr/include/gsl/gsl_vector_char.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_view_array_with_stride";

   function gsl_vector_char_const_view_array (v : Interfaces.C.Strings.chars_ptr; n : size_t) return u_gsl_vector_char_const_view  -- /usr/include/gsl/gsl_vector_char.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_const_view_array";

   function gsl_vector_char_const_view_array_with_stride
     (base : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return u_gsl_vector_char_const_view  -- /usr/include/gsl/gsl_vector_char.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_const_view_array_with_stride";

   function gsl_vector_char_subvector
     (v : access gsl_vector_char;
      i : size_t;
      n : size_t) return u_gsl_vector_char_view  -- /usr/include/gsl/gsl_vector_char.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_subvector";

   function gsl_vector_char_subvector_with_stride
     (v : access gsl_vector_char;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_char_view  -- /usr/include/gsl/gsl_vector_char.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_subvector_with_stride";

   function gsl_vector_char_const_subvector
     (v : access constant gsl_vector_char;
      i : size_t;
      n : size_t) return u_gsl_vector_char_const_view  -- /usr/include/gsl/gsl_vector_char.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_const_subvector";

   function gsl_vector_char_const_subvector_with_stride
     (v : access constant gsl_vector_char;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_char_const_view  -- /usr/include/gsl/gsl_vector_char.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_const_subvector_with_stride";

  -- Operations  
   procedure gsl_vector_char_set_zero (v : access gsl_vector_char)  -- /usr/include/gsl/gsl_vector_char.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_set_zero";

   procedure gsl_vector_char_set_all (v : access gsl_vector_char; x : char)  -- /usr/include/gsl/gsl_vector_char.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_set_all";

   function gsl_vector_char_set_basis (v : access gsl_vector_char; i : size_t) return int  -- /usr/include/gsl/gsl_vector_char.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_set_basis";

   function gsl_vector_char_fread (stream : access Interfaces.C_Streams.FILEs; v : access gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_fread";

   function gsl_vector_char_fwrite (stream : access Interfaces.C_Streams.FILEs; v : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_fwrite";

   function gsl_vector_char_fscanf (stream : access Interfaces.C_Streams.FILEs; v : access gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_fscanf";

   function gsl_vector_char_fprintf
     (stream : access Interfaces.C_Streams.FILEs;
      v : access constant gsl_vector_char;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_vector_char.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_fprintf";

   function gsl_vector_char_memcpy (dest : access gsl_vector_char; src : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_memcpy";

   function gsl_vector_char_reverse (v : access gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_reverse";

   function gsl_vector_char_swap (v : access gsl_vector_char; w : access gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_swap";

   function gsl_vector_char_swap_elements
     (v : access gsl_vector_char;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_vector_char.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_swap_elements";

   function gsl_vector_char_max (v : access constant gsl_vector_char) return char  -- /usr/include/gsl/gsl_vector_char.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_max";

   function gsl_vector_char_min (v : access constant gsl_vector_char) return char  -- /usr/include/gsl/gsl_vector_char.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_min";

   procedure gsl_vector_char_minmax
     (v : access constant gsl_vector_char;
      min_out : Interfaces.C.Strings.chars_ptr;
      max_out : Interfaces.C.Strings.chars_ptr)  -- /usr/include/gsl/gsl_vector_char.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_minmax";

   function gsl_vector_char_max_index (v : access constant gsl_vector_char) return size_t  -- /usr/include/gsl/gsl_vector_char.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_max_index";

   function gsl_vector_char_min_index (v : access constant gsl_vector_char) return size_t  -- /usr/include/gsl/gsl_vector_char.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_min_index";

   procedure gsl_vector_char_minmax_index
     (v : access constant gsl_vector_char;
      imin : access size_t;
      imax : access size_t)  -- /usr/include/gsl/gsl_vector_char.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_minmax_index";

   function gsl_vector_char_add (a : access gsl_vector_char; b : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_add";

   function gsl_vector_char_sub (a : access gsl_vector_char; b : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_sub";

   function gsl_vector_char_mul (a : access gsl_vector_char; b : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_mul";

   function gsl_vector_char_div (a : access gsl_vector_char; b : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_div";

   function gsl_vector_char_scale (a : access gsl_vector_char; x : double) return int  -- /usr/include/gsl/gsl_vector_char.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_scale";

   function gsl_vector_char_add_constant (a : access gsl_vector_char; x : double) return int  -- /usr/include/gsl/gsl_vector_char.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_add_constant";

   function gsl_vector_char_equal (u : access constant gsl_vector_char; v : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_equal";

   function gsl_vector_char_isnull (v : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_isnull";

   function gsl_vector_char_ispos (v : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_ispos";

   function gsl_vector_char_isneg (v : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_isneg";

   function gsl_vector_char_isnonneg (v : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_isnonneg";

   function gsl_vector_char_get (v : access constant gsl_vector_char; i : size_t) return char  -- /usr/include/gsl/gsl_vector_char.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_get";

   procedure gsl_vector_char_set
     (v : access gsl_vector_char;
      i : size_t;
      x : char)  -- /usr/include/gsl/gsl_vector_char.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_set";

   function gsl_vector_char_ptr (arg1 : access gsl_vector_char; arg2 : size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_vector_char.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_ptr";

   function gsl_vector_char_const_ptr (arg1 : access constant gsl_vector_char; arg2 : size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_vector_char.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_const_ptr";

end GSL.Low_Level.gsl_gsl_vector_char_h;
