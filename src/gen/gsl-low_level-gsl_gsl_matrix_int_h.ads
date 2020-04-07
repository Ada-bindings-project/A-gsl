pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_block_int_h;
with GSL.Low_Level.gsl_gsl_vector_int_h;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_matrix_int_h is

  -- matrix/gsl_matrix_int.h
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

   type gsl_matrix_int is record
      size1 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_int.h:44
      size2 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_int.h:45
      tda : aliased size_t;  -- /usr/include/gsl/gsl_matrix_int.h:46
      data : access int;  -- /usr/include/gsl/gsl_matrix_int.h:47
      block : access GSL.Low_Level.gsl_gsl_block_int_h.gsl_block_int;  -- /usr/include/gsl/gsl_matrix_int.h:48
      owner : aliased int;  -- /usr/include/gsl/gsl_matrix_int.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_int.h:50

   type u_gsl_matrix_int_view is record
      matrix : aliased gsl_matrix_int;  -- /usr/include/gsl/gsl_matrix_int.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_int.h:55

   subtype gsl_matrix_int_view is u_gsl_matrix_int_view;  -- /usr/include/gsl/gsl_matrix_int.h:57

   type u_gsl_matrix_int_const_view is record
      matrix : aliased gsl_matrix_int;  -- /usr/include/gsl/gsl_matrix_int.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_int.h:62

   subtype gsl_matrix_int_const_view is u_gsl_matrix_int_const_view;  -- /usr/include/gsl/gsl_matrix_int.h:64

  -- Allocation  
   function gsl_matrix_int_alloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix_int  -- /usr/include/gsl/gsl_matrix_int.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_alloc";

   function gsl_matrix_int_calloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix_int  -- /usr/include/gsl/gsl_matrix_int.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_calloc";

   function gsl_matrix_int_alloc_from_block
     (arg1 : access GSL.Low_Level.gsl_gsl_block_int_h.gsl_block_int;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix_int  -- /usr/include/gsl/gsl_matrix_int.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_alloc_from_block";

   function gsl_matrix_int_alloc_from_matrix
     (arg1 : access gsl_matrix_int;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix_int  -- /usr/include/gsl/gsl_matrix_int.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_alloc_from_matrix";

   function gsl_vector_int_alloc_row_from_matrix (arg1 : access gsl_matrix_int; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_int_h.gsl_vector_int  -- /usr/include/gsl/gsl_matrix_int.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_alloc_row_from_matrix";

   function gsl_vector_int_alloc_col_from_matrix (arg1 : access gsl_matrix_int; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_int_h.gsl_vector_int  -- /usr/include/gsl/gsl_matrix_int.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_alloc_col_from_matrix";

   procedure gsl_matrix_int_free (m : access gsl_matrix_int)  -- /usr/include/gsl/gsl_matrix_int.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_free";

  -- Views  
   function gsl_matrix_int_submatrix
     (m : access gsl_matrix_int;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_int_view  -- /usr/include/gsl/gsl_matrix_int.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_submatrix";

   function gsl_matrix_int_row (m : access gsl_matrix_int; i : size_t) return GSL.Low_Level.gsl_gsl_vector_int_h.u_gsl_vector_int_view  -- /usr/include/gsl/gsl_matrix_int.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_row";

   function gsl_matrix_int_column (m : access gsl_matrix_int; j : size_t) return GSL.Low_Level.gsl_gsl_vector_int_h.u_gsl_vector_int_view  -- /usr/include/gsl/gsl_matrix_int.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_column";

   function gsl_matrix_int_diagonal (m : access gsl_matrix_int) return GSL.Low_Level.gsl_gsl_vector_int_h.u_gsl_vector_int_view  -- /usr/include/gsl/gsl_matrix_int.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_diagonal";

   function gsl_matrix_int_subdiagonal (m : access gsl_matrix_int; k : size_t) return GSL.Low_Level.gsl_gsl_vector_int_h.u_gsl_vector_int_view  -- /usr/include/gsl/gsl_matrix_int.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_subdiagonal";

   function gsl_matrix_int_superdiagonal (m : access gsl_matrix_int; k : size_t) return GSL.Low_Level.gsl_gsl_vector_int_h.u_gsl_vector_int_view  -- /usr/include/gsl/gsl_matrix_int.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_superdiagonal";

   function gsl_matrix_int_subrow
     (m : access gsl_matrix_int;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_int_h.u_gsl_vector_int_view  -- /usr/include/gsl/gsl_matrix_int.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_subrow";

   function gsl_matrix_int_subcolumn
     (m : access gsl_matrix_int;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_int_h.u_gsl_vector_int_view  -- /usr/include/gsl/gsl_matrix_int.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_subcolumn";

   function gsl_matrix_int_view_array
     (base : access int;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_int_view  -- /usr/include/gsl/gsl_matrix_int.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_view_array";

   function gsl_matrix_int_view_array_with_tda
     (base : access int;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_int_view  -- /usr/include/gsl/gsl_matrix_int.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_view_array_with_tda";

   function gsl_matrix_int_view_vector
     (v : access GSL.Low_Level.gsl_gsl_vector_int_h.gsl_vector_int;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_int_view  -- /usr/include/gsl/gsl_matrix_int.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_view_vector";

   function gsl_matrix_int_view_vector_with_tda
     (v : access GSL.Low_Level.gsl_gsl_vector_int_h.gsl_vector_int;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_int_view  -- /usr/include/gsl/gsl_matrix_int.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_view_vector_with_tda";

   function gsl_matrix_int_const_submatrix
     (m : access constant gsl_matrix_int;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_int_const_view  -- /usr/include/gsl/gsl_matrix_int.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_const_submatrix";

   function gsl_matrix_int_const_row (m : access constant gsl_matrix_int; i : size_t) return GSL.Low_Level.gsl_gsl_vector_int_h.u_gsl_vector_int_const_view  -- /usr/include/gsl/gsl_matrix_int.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_const_row";

   function gsl_matrix_int_const_column (m : access constant gsl_matrix_int; j : size_t) return GSL.Low_Level.gsl_gsl_vector_int_h.u_gsl_vector_int_const_view  -- /usr/include/gsl/gsl_matrix_int.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_const_column";

   function gsl_matrix_int_const_diagonal (m : access constant gsl_matrix_int) return GSL.Low_Level.gsl_gsl_vector_int_h.u_gsl_vector_int_const_view  -- /usr/include/gsl/gsl_matrix_int.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_const_diagonal";

   function gsl_matrix_int_const_subdiagonal (m : access constant gsl_matrix_int; k : size_t) return GSL.Low_Level.gsl_gsl_vector_int_h.u_gsl_vector_int_const_view  -- /usr/include/gsl/gsl_matrix_int.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_const_subdiagonal";

   function gsl_matrix_int_const_superdiagonal (m : access constant gsl_matrix_int; k : size_t) return GSL.Low_Level.gsl_gsl_vector_int_h.u_gsl_vector_int_const_view  -- /usr/include/gsl/gsl_matrix_int.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_const_superdiagonal";

   function gsl_matrix_int_const_subrow
     (m : access constant gsl_matrix_int;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_int_h.u_gsl_vector_int_const_view  -- /usr/include/gsl/gsl_matrix_int.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_const_subrow";

   function gsl_matrix_int_const_subcolumn
     (m : access constant gsl_matrix_int;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_int_h.u_gsl_vector_int_const_view  -- /usr/include/gsl/gsl_matrix_int.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_const_subcolumn";

   function gsl_matrix_int_const_view_array
     (base : access int;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_int_const_view  -- /usr/include/gsl/gsl_matrix_int.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_const_view_array";

   function gsl_matrix_int_const_view_array_with_tda
     (base : access int;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_int_const_view  -- /usr/include/gsl/gsl_matrix_int.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_const_view_array_with_tda";

   function gsl_matrix_int_const_view_vector
     (v : access constant GSL.Low_Level.gsl_gsl_vector_int_h.gsl_vector_int;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_int_const_view  -- /usr/include/gsl/gsl_matrix_int.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_const_view_vector";

   function gsl_matrix_int_const_view_vector_with_tda
     (v : access constant GSL.Low_Level.gsl_gsl_vector_int_h.gsl_vector_int;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_int_const_view  -- /usr/include/gsl/gsl_matrix_int.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_const_view_vector_with_tda";

  -- Operations  
   procedure gsl_matrix_int_set_zero (m : access gsl_matrix_int)  -- /usr/include/gsl/gsl_matrix_int.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_set_zero";

   procedure gsl_matrix_int_set_identity (m : access gsl_matrix_int)  -- /usr/include/gsl/gsl_matrix_int.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_set_identity";

   procedure gsl_matrix_int_set_all (m : access gsl_matrix_int; x : int)  -- /usr/include/gsl/gsl_matrix_int.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_set_all";

   function gsl_matrix_int_fread (stream : Interfaces.C_Streams.FILEs; m : access gsl_matrix_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_fread";

   function gsl_matrix_int_fwrite (stream : Interfaces.C_Streams.FILEs; m : access constant gsl_matrix_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_fwrite";

   function gsl_matrix_int_fscanf (stream : Interfaces.C_Streams.FILEs; m : access gsl_matrix_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_fscanf";

   function gsl_matrix_int_fprintf
     (stream : Interfaces.C_Streams.FILEs;
      m : access constant gsl_matrix_int;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_matrix_int.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_fprintf";

   function gsl_matrix_int_memcpy (dest : access gsl_matrix_int; src : access constant gsl_matrix_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_memcpy";

   function gsl_matrix_int_swap (m1 : access gsl_matrix_int; m2 : access gsl_matrix_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_swap";

   function gsl_matrix_int_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix_int;
      src : access constant gsl_matrix_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_tricpy";

   function gsl_matrix_int_swap_rows
     (m : access gsl_matrix_int;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_int.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_swap_rows";

   function gsl_matrix_int_swap_columns
     (m : access gsl_matrix_int;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_int.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_swap_columns";

   function gsl_matrix_int_swap_rowcol
     (m : access gsl_matrix_int;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_int.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_swap_rowcol";

   function gsl_matrix_int_transpose (m : access gsl_matrix_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_transpose";

   function gsl_matrix_int_transpose_memcpy (dest : access gsl_matrix_int; src : access constant gsl_matrix_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_transpose_memcpy";

   function gsl_matrix_int_transpose_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix_int;
      src : access constant gsl_matrix_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_transpose_tricpy";

   function gsl_matrix_int_max (m : access constant gsl_matrix_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_max";

   function gsl_matrix_int_min (m : access constant gsl_matrix_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_min";

   procedure gsl_matrix_int_minmax
     (m : access constant gsl_matrix_int;
      min_out : access int;
      max_out : access int)  -- /usr/include/gsl/gsl_matrix_int.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_minmax";

   procedure gsl_matrix_int_max_index
     (m : access constant gsl_matrix_int;
      imax : access size_t;
      jmax : access size_t)  -- /usr/include/gsl/gsl_matrix_int.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_max_index";

   procedure gsl_matrix_int_min_index
     (m : access constant gsl_matrix_int;
      imin : access size_t;
      jmin : access size_t)  -- /usr/include/gsl/gsl_matrix_int.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_min_index";

   procedure gsl_matrix_int_minmax_index
     (m : access constant gsl_matrix_int;
      imin : access size_t;
      jmin : access size_t;
      imax : access size_t;
      jmax : access size_t)  -- /usr/include/gsl/gsl_matrix_int.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_minmax_index";

   function gsl_matrix_int_equal (a : access constant gsl_matrix_int; b : access constant gsl_matrix_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_equal";

   function gsl_matrix_int_isnull (m : access constant gsl_matrix_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_isnull";

   function gsl_matrix_int_ispos (m : access constant gsl_matrix_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_ispos";

   function gsl_matrix_int_isneg (m : access constant gsl_matrix_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_isneg";

   function gsl_matrix_int_isnonneg (m : access constant gsl_matrix_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_isnonneg";

   function gsl_matrix_int_add (a : access gsl_matrix_int; b : access constant gsl_matrix_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_add";

   function gsl_matrix_int_sub (a : access gsl_matrix_int; b : access constant gsl_matrix_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_sub";

   function gsl_matrix_int_mul_elements (a : access gsl_matrix_int; b : access constant gsl_matrix_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_mul_elements";

   function gsl_matrix_int_div_elements (a : access gsl_matrix_int; b : access constant gsl_matrix_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_div_elements";

   function gsl_matrix_int_scale (a : access gsl_matrix_int; x : double) return int  -- /usr/include/gsl/gsl_matrix_int.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_scale";

   function gsl_matrix_int_add_constant (a : access gsl_matrix_int; x : double) return int  -- /usr/include/gsl/gsl_matrix_int.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_add_constant";

   function gsl_matrix_int_add_diagonal (a : access gsl_matrix_int; x : double) return int  -- /usr/include/gsl/gsl_matrix_int.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_add_diagonal";

  --********************************************************************* 
  -- The functions below are obsolete                                     
  --********************************************************************* 
   function gsl_matrix_int_get_row
     (v : access GSL.Low_Level.gsl_gsl_vector_int_h.gsl_vector_int;
      m : access constant gsl_matrix_int;
      i : size_t) return int  -- /usr/include/gsl/gsl_matrix_int.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_get_row";

   function gsl_matrix_int_get_col
     (v : access GSL.Low_Level.gsl_gsl_vector_int_h.gsl_vector_int;
      m : access constant gsl_matrix_int;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_int.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_get_col";

   function gsl_matrix_int_set_row
     (m : access gsl_matrix_int;
      i : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_int_h.gsl_vector_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_set_row";

   function gsl_matrix_int_set_col
     (m : access gsl_matrix_int;
      j : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_int_h.gsl_vector_int) return int  -- /usr/include/gsl/gsl_matrix_int.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_set_col";

  --********************************************************************* 
  -- inline functions if you are using GCC  
   function gsl_matrix_int_get
     (m : access constant gsl_matrix_int;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_int.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_get";

   procedure gsl_matrix_int_set
     (m : access gsl_matrix_int;
      i : size_t;
      j : size_t;
      x : int)  -- /usr/include/gsl/gsl_matrix_int.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_set";

   function gsl_matrix_int_ptr
     (arg1 : access gsl_matrix_int;
      arg2 : size_t;
      arg3 : size_t) return access int  -- /usr/include/gsl/gsl_matrix_int.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_ptr";

   function gsl_matrix_int_const_ptr
     (arg1 : access constant gsl_matrix_int;
      arg2 : size_t;
      arg3 : size_t) return access int  -- /usr/include/gsl/gsl_matrix_int.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_int_const_ptr";

end GSL.Low_Level.gsl_gsl_matrix_int_h;
