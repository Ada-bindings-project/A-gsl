pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;
with GSL.Low_Level.gsl_gsl_block_char_h;
with GSL.Low_Level.gsl_gsl_vector_char_h;
with Interfaces.C_Streams;

package GSL.Low_Level.gsl_gsl_matrix_char_h is

  -- matrix/gsl_matrix_char.h
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

   type gsl_matrix_char is record
      size1 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_char.h:44
      size2 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_char.h:45
      tda : aliased size_t;  -- /usr/include/gsl/gsl_matrix_char.h:46
      data : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_matrix_char.h:47
      block : access GSL.Low_Level.gsl_gsl_block_char_h.gsl_block_char;  -- /usr/include/gsl/gsl_matrix_char.h:48
      owner : aliased int;  -- /usr/include/gsl/gsl_matrix_char.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_char.h:50

   type u_gsl_matrix_char_view is record
      matrix : aliased gsl_matrix_char;  -- /usr/include/gsl/gsl_matrix_char.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_char.h:55

   subtype gsl_matrix_char_view is u_gsl_matrix_char_view;  -- /usr/include/gsl/gsl_matrix_char.h:57

   type u_gsl_matrix_char_const_view is record
      matrix : aliased gsl_matrix_char;  -- /usr/include/gsl/gsl_matrix_char.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_char.h:62

   subtype gsl_matrix_char_const_view is u_gsl_matrix_char_const_view;  -- /usr/include/gsl/gsl_matrix_char.h:64

  -- Allocation  
   function gsl_matrix_char_alloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix_char  -- /usr/include/gsl/gsl_matrix_char.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_alloc";

   function gsl_matrix_char_calloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix_char  -- /usr/include/gsl/gsl_matrix_char.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_calloc";

   function gsl_matrix_char_alloc_from_block
     (arg1 : access GSL.Low_Level.gsl_gsl_block_char_h.gsl_block_char;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix_char  -- /usr/include/gsl/gsl_matrix_char.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_alloc_from_block";

   function gsl_matrix_char_alloc_from_matrix
     (arg1 : access gsl_matrix_char;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix_char  -- /usr/include/gsl/gsl_matrix_char.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_alloc_from_matrix";

   function gsl_vector_char_alloc_row_from_matrix (arg1 : access gsl_matrix_char; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_char_h.gsl_vector_char  -- /usr/include/gsl/gsl_matrix_char.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_alloc_row_from_matrix";

   function gsl_vector_char_alloc_col_from_matrix (arg1 : access gsl_matrix_char; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_char_h.gsl_vector_char  -- /usr/include/gsl/gsl_matrix_char.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_alloc_col_from_matrix";

   procedure gsl_matrix_char_free (m : access gsl_matrix_char)  -- /usr/include/gsl/gsl_matrix_char.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_free";

  -- Views  
   function gsl_matrix_char_submatrix
     (m : access gsl_matrix_char;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_char_view  -- /usr/include/gsl/gsl_matrix_char.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_submatrix";

   function gsl_matrix_char_row (m : access gsl_matrix_char; i : size_t) return GSL.Low_Level.gsl_gsl_vector_char_h.u_gsl_vector_char_view  -- /usr/include/gsl/gsl_matrix_char.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_row";

   function gsl_matrix_char_column (m : access gsl_matrix_char; j : size_t) return GSL.Low_Level.gsl_gsl_vector_char_h.u_gsl_vector_char_view  -- /usr/include/gsl/gsl_matrix_char.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_column";

   function gsl_matrix_char_diagonal (m : access gsl_matrix_char) return GSL.Low_Level.gsl_gsl_vector_char_h.u_gsl_vector_char_view  -- /usr/include/gsl/gsl_matrix_char.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_diagonal";

   function gsl_matrix_char_subdiagonal (m : access gsl_matrix_char; k : size_t) return GSL.Low_Level.gsl_gsl_vector_char_h.u_gsl_vector_char_view  -- /usr/include/gsl/gsl_matrix_char.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_subdiagonal";

   function gsl_matrix_char_superdiagonal (m : access gsl_matrix_char; k : size_t) return GSL.Low_Level.gsl_gsl_vector_char_h.u_gsl_vector_char_view  -- /usr/include/gsl/gsl_matrix_char.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_superdiagonal";

   function gsl_matrix_char_subrow
     (m : access gsl_matrix_char;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_char_h.u_gsl_vector_char_view  -- /usr/include/gsl/gsl_matrix_char.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_subrow";

   function gsl_matrix_char_subcolumn
     (m : access gsl_matrix_char;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_char_h.u_gsl_vector_char_view  -- /usr/include/gsl/gsl_matrix_char.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_subcolumn";

   function gsl_matrix_char_view_array
     (base : Interfaces.C.Strings.chars_ptr;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_char_view  -- /usr/include/gsl/gsl_matrix_char.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_view_array";

   function gsl_matrix_char_view_array_with_tda
     (base : Interfaces.C.Strings.chars_ptr;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_char_view  -- /usr/include/gsl/gsl_matrix_char.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_view_array_with_tda";

   function gsl_matrix_char_view_vector
     (v : access GSL.Low_Level.gsl_gsl_vector_char_h.gsl_vector_char;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_char_view  -- /usr/include/gsl/gsl_matrix_char.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_view_vector";

   function gsl_matrix_char_view_vector_with_tda
     (v : access GSL.Low_Level.gsl_gsl_vector_char_h.gsl_vector_char;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_char_view  -- /usr/include/gsl/gsl_matrix_char.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_view_vector_with_tda";

   function gsl_matrix_char_const_submatrix
     (m : access constant gsl_matrix_char;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_char_const_view  -- /usr/include/gsl/gsl_matrix_char.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_const_submatrix";

   function gsl_matrix_char_const_row (m : access constant gsl_matrix_char; i : size_t) return GSL.Low_Level.gsl_gsl_vector_char_h.u_gsl_vector_char_const_view  -- /usr/include/gsl/gsl_matrix_char.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_const_row";

   function gsl_matrix_char_const_column (m : access constant gsl_matrix_char; j : size_t) return GSL.Low_Level.gsl_gsl_vector_char_h.u_gsl_vector_char_const_view  -- /usr/include/gsl/gsl_matrix_char.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_const_column";

   function gsl_matrix_char_const_diagonal (m : access constant gsl_matrix_char) return GSL.Low_Level.gsl_gsl_vector_char_h.u_gsl_vector_char_const_view  -- /usr/include/gsl/gsl_matrix_char.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_const_diagonal";

   function gsl_matrix_char_const_subdiagonal (m : access constant gsl_matrix_char; k : size_t) return GSL.Low_Level.gsl_gsl_vector_char_h.u_gsl_vector_char_const_view  -- /usr/include/gsl/gsl_matrix_char.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_const_subdiagonal";

   function gsl_matrix_char_const_superdiagonal (m : access constant gsl_matrix_char; k : size_t) return GSL.Low_Level.gsl_gsl_vector_char_h.u_gsl_vector_char_const_view  -- /usr/include/gsl/gsl_matrix_char.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_const_superdiagonal";

   function gsl_matrix_char_const_subrow
     (m : access constant gsl_matrix_char;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_char_h.u_gsl_vector_char_const_view  -- /usr/include/gsl/gsl_matrix_char.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_const_subrow";

   function gsl_matrix_char_const_subcolumn
     (m : access constant gsl_matrix_char;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_char_h.u_gsl_vector_char_const_view  -- /usr/include/gsl/gsl_matrix_char.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_const_subcolumn";

   function gsl_matrix_char_const_view_array
     (base : Interfaces.C.Strings.chars_ptr;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_char_const_view  -- /usr/include/gsl/gsl_matrix_char.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_const_view_array";

   function gsl_matrix_char_const_view_array_with_tda
     (base : Interfaces.C.Strings.chars_ptr;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_char_const_view  -- /usr/include/gsl/gsl_matrix_char.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_const_view_array_with_tda";

   function gsl_matrix_char_const_view_vector
     (v : access constant GSL.Low_Level.gsl_gsl_vector_char_h.gsl_vector_char;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_char_const_view  -- /usr/include/gsl/gsl_matrix_char.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_const_view_vector";

   function gsl_matrix_char_const_view_vector_with_tda
     (v : access constant GSL.Low_Level.gsl_gsl_vector_char_h.gsl_vector_char;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_char_const_view  -- /usr/include/gsl/gsl_matrix_char.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_const_view_vector_with_tda";

  -- Operations  
   procedure gsl_matrix_char_set_zero (m : access gsl_matrix_char)  -- /usr/include/gsl/gsl_matrix_char.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_set_zero";

   procedure gsl_matrix_char_set_identity (m : access gsl_matrix_char)  -- /usr/include/gsl/gsl_matrix_char.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_set_identity";

   procedure gsl_matrix_char_set_all (m : access gsl_matrix_char; x : char)  -- /usr/include/gsl/gsl_matrix_char.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_set_all";

   function gsl_matrix_char_fread (stream : Interfaces.C_Streams.FILEs; m : access gsl_matrix_char) return int  -- /usr/include/gsl/gsl_matrix_char.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_fread";

   function gsl_matrix_char_fwrite (stream : Interfaces.C_Streams.FILEs; m : access constant gsl_matrix_char) return int  -- /usr/include/gsl/gsl_matrix_char.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_fwrite";

   function gsl_matrix_char_fscanf (stream : Interfaces.C_Streams.FILEs; m : access gsl_matrix_char) return int  -- /usr/include/gsl/gsl_matrix_char.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_fscanf";

   function gsl_matrix_char_fprintf
     (stream : Interfaces.C_Streams.FILEs;
      m : access constant gsl_matrix_char;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_matrix_char.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_fprintf";

   function gsl_matrix_char_memcpy (dest : access gsl_matrix_char; src : access constant gsl_matrix_char) return int  -- /usr/include/gsl/gsl_matrix_char.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_memcpy";

   function gsl_matrix_char_swap (m1 : access gsl_matrix_char; m2 : access gsl_matrix_char) return int  -- /usr/include/gsl/gsl_matrix_char.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_swap";

   function gsl_matrix_char_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix_char;
      src : access constant gsl_matrix_char) return int  -- /usr/include/gsl/gsl_matrix_char.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_tricpy";

   function gsl_matrix_char_swap_rows
     (m : access gsl_matrix_char;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_char.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_swap_rows";

   function gsl_matrix_char_swap_columns
     (m : access gsl_matrix_char;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_char.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_swap_columns";

   function gsl_matrix_char_swap_rowcol
     (m : access gsl_matrix_char;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_char.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_swap_rowcol";

   function gsl_matrix_char_transpose (m : access gsl_matrix_char) return int  -- /usr/include/gsl/gsl_matrix_char.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_transpose";

   function gsl_matrix_char_transpose_memcpy (dest : access gsl_matrix_char; src : access constant gsl_matrix_char) return int  -- /usr/include/gsl/gsl_matrix_char.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_transpose_memcpy";

   function gsl_matrix_char_transpose_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix_char;
      src : access constant gsl_matrix_char) return int  -- /usr/include/gsl/gsl_matrix_char.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_transpose_tricpy";

   function gsl_matrix_char_max (m : access constant gsl_matrix_char) return char  -- /usr/include/gsl/gsl_matrix_char.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_max";

   function gsl_matrix_char_min (m : access constant gsl_matrix_char) return char  -- /usr/include/gsl/gsl_matrix_char.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_min";

   procedure gsl_matrix_char_minmax
     (m : access constant gsl_matrix_char;
      min_out : Interfaces.C.Strings.chars_ptr;
      max_out : Interfaces.C.Strings.chars_ptr)  -- /usr/include/gsl/gsl_matrix_char.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_minmax";

   procedure gsl_matrix_char_max_index
     (m : access constant gsl_matrix_char;
      imax : access size_t;
      jmax : access size_t)  -- /usr/include/gsl/gsl_matrix_char.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_max_index";

   procedure gsl_matrix_char_min_index
     (m : access constant gsl_matrix_char;
      imin : access size_t;
      jmin : access size_t)  -- /usr/include/gsl/gsl_matrix_char.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_min_index";

   procedure gsl_matrix_char_minmax_index
     (m : access constant gsl_matrix_char;
      imin : access size_t;
      jmin : access size_t;
      imax : access size_t;
      jmax : access size_t)  -- /usr/include/gsl/gsl_matrix_char.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_minmax_index";

   function gsl_matrix_char_equal (a : access constant gsl_matrix_char; b : access constant gsl_matrix_char) return int  -- /usr/include/gsl/gsl_matrix_char.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_equal";

   function gsl_matrix_char_isnull (m : access constant gsl_matrix_char) return int  -- /usr/include/gsl/gsl_matrix_char.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_isnull";

   function gsl_matrix_char_ispos (m : access constant gsl_matrix_char) return int  -- /usr/include/gsl/gsl_matrix_char.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_ispos";

   function gsl_matrix_char_isneg (m : access constant gsl_matrix_char) return int  -- /usr/include/gsl/gsl_matrix_char.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_isneg";

   function gsl_matrix_char_isnonneg (m : access constant gsl_matrix_char) return int  -- /usr/include/gsl/gsl_matrix_char.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_isnonneg";

   function gsl_matrix_char_add (a : access gsl_matrix_char; b : access constant gsl_matrix_char) return int  -- /usr/include/gsl/gsl_matrix_char.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_add";

   function gsl_matrix_char_sub (a : access gsl_matrix_char; b : access constant gsl_matrix_char) return int  -- /usr/include/gsl/gsl_matrix_char.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_sub";

   function gsl_matrix_char_mul_elements (a : access gsl_matrix_char; b : access constant gsl_matrix_char) return int  -- /usr/include/gsl/gsl_matrix_char.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_mul_elements";

   function gsl_matrix_char_div_elements (a : access gsl_matrix_char; b : access constant gsl_matrix_char) return int  -- /usr/include/gsl/gsl_matrix_char.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_div_elements";

   function gsl_matrix_char_scale (a : access gsl_matrix_char; x : double) return int  -- /usr/include/gsl/gsl_matrix_char.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_scale";

   function gsl_matrix_char_add_constant (a : access gsl_matrix_char; x : double) return int  -- /usr/include/gsl/gsl_matrix_char.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_add_constant";

   function gsl_matrix_char_add_diagonal (a : access gsl_matrix_char; x : double) return int  -- /usr/include/gsl/gsl_matrix_char.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_add_diagonal";

  --********************************************************************* 
  -- The functions below are obsolete                                     
  --********************************************************************* 
   function gsl_matrix_char_get_row
     (v : access GSL.Low_Level.gsl_gsl_vector_char_h.gsl_vector_char;
      m : access constant gsl_matrix_char;
      i : size_t) return int  -- /usr/include/gsl/gsl_matrix_char.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_get_row";

   function gsl_matrix_char_get_col
     (v : access GSL.Low_Level.gsl_gsl_vector_char_h.gsl_vector_char;
      m : access constant gsl_matrix_char;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_char.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_get_col";

   function gsl_matrix_char_set_row
     (m : access gsl_matrix_char;
      i : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_char_h.gsl_vector_char) return int  -- /usr/include/gsl/gsl_matrix_char.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_set_row";

   function gsl_matrix_char_set_col
     (m : access gsl_matrix_char;
      j : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_char_h.gsl_vector_char) return int  -- /usr/include/gsl/gsl_matrix_char.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_set_col";

  --********************************************************************* 
  -- inline functions if you are using GCC  
   function gsl_matrix_char_get
     (m : access constant gsl_matrix_char;
      i : size_t;
      j : size_t) return char  -- /usr/include/gsl/gsl_matrix_char.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_get";

   procedure gsl_matrix_char_set
     (m : access gsl_matrix_char;
      i : size_t;
      j : size_t;
      x : char)  -- /usr/include/gsl/gsl_matrix_char.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_set";

   function gsl_matrix_char_ptr
     (arg1 : access gsl_matrix_char;
      arg2 : size_t;
      arg3 : size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_matrix_char.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_ptr";

   function gsl_matrix_char_const_ptr
     (arg1 : access constant gsl_matrix_char;
      arg2 : size_t;
      arg3 : size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_matrix_char.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_char_const_ptr";

end GSL.Low_Level.gsl_gsl_matrix_char_h;
