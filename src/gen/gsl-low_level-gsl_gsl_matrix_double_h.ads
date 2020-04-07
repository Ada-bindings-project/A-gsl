pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_block_double_h;
with GSL.Low_Level.gsl_gsl_vector_double_h;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_matrix_double_h is

  -- matrix/gsl_matrix_double.h
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

   type gsl_matrix is record
      size1 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_double.h:44
      size2 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_double.h:45
      tda : aliased size_t;  -- /usr/include/gsl/gsl_matrix_double.h:46
      data : access double;  -- /usr/include/gsl/gsl_matrix_double.h:47
      block : access GSL.Low_Level.gsl_gsl_block_double_h.gsl_block;  -- /usr/include/gsl/gsl_matrix_double.h:48
      owner : aliased int;  -- /usr/include/gsl/gsl_matrix_double.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_double.h:50

   type u_gsl_matrix_view is record
      matrix : aliased gsl_matrix;  -- /usr/include/gsl/gsl_matrix_double.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_double.h:55

   subtype gsl_matrix_view is u_gsl_matrix_view;  -- /usr/include/gsl/gsl_matrix_double.h:57

   type u_gsl_matrix_const_view is record
      matrix : aliased gsl_matrix;  -- /usr/include/gsl/gsl_matrix_double.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_double.h:62

   subtype gsl_matrix_const_view is u_gsl_matrix_const_view;  -- /usr/include/gsl/gsl_matrix_double.h:64

  -- Allocation  
   function gsl_matrix_alloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix  -- /usr/include/gsl/gsl_matrix_double.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_alloc";

   function gsl_matrix_calloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix  -- /usr/include/gsl/gsl_matrix_double.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_calloc";

   function gsl_matrix_alloc_from_block
     (arg1 : access GSL.Low_Level.gsl_gsl_block_double_h.gsl_block;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix  -- /usr/include/gsl/gsl_matrix_double.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_alloc_from_block";

   function gsl_matrix_alloc_from_matrix
     (arg1 : access gsl_matrix;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix  -- /usr/include/gsl/gsl_matrix_double.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_alloc_from_matrix";

   function gsl_vector_alloc_row_from_matrix (arg1 : access gsl_matrix; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_matrix_double.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_alloc_row_from_matrix";

   function gsl_vector_alloc_col_from_matrix (arg1 : access gsl_matrix; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_matrix_double.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_alloc_col_from_matrix";

   procedure gsl_matrix_free (m : access gsl_matrix)  -- /usr/include/gsl/gsl_matrix_double.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_free";

  -- Views  
   function gsl_matrix_submatrix
     (m : access gsl_matrix;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_view  -- /usr/include/gsl/gsl_matrix_double.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_submatrix";

   function gsl_matrix_row (m : access gsl_matrix; i : size_t) return GSL.Low_Level.gsl_gsl_vector_double_h.u_gsl_vector_view  -- /usr/include/gsl/gsl_matrix_double.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_row";

   function gsl_matrix_column (m : access gsl_matrix; j : size_t) return GSL.Low_Level.gsl_gsl_vector_double_h.u_gsl_vector_view  -- /usr/include/gsl/gsl_matrix_double.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_column";

   function gsl_matrix_diagonal (m : access gsl_matrix) return GSL.Low_Level.gsl_gsl_vector_double_h.u_gsl_vector_view  -- /usr/include/gsl/gsl_matrix_double.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_diagonal";

   function gsl_matrix_subdiagonal (m : access gsl_matrix; k : size_t) return GSL.Low_Level.gsl_gsl_vector_double_h.u_gsl_vector_view  -- /usr/include/gsl/gsl_matrix_double.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_subdiagonal";

   function gsl_matrix_superdiagonal (m : access gsl_matrix; k : size_t) return GSL.Low_Level.gsl_gsl_vector_double_h.u_gsl_vector_view  -- /usr/include/gsl/gsl_matrix_double.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_superdiagonal";

   function gsl_matrix_subrow
     (m : access gsl_matrix;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_double_h.u_gsl_vector_view  -- /usr/include/gsl/gsl_matrix_double.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_subrow";

   function gsl_matrix_subcolumn
     (m : access gsl_matrix;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_double_h.u_gsl_vector_view  -- /usr/include/gsl/gsl_matrix_double.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_subcolumn";

   function gsl_matrix_view_array
     (base : access double;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_view  -- /usr/include/gsl/gsl_matrix_double.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_view_array";

   function gsl_matrix_view_array_with_tda
     (base : access double;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_view  -- /usr/include/gsl/gsl_matrix_double.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_view_array_with_tda";

   function gsl_matrix_view_vector
     (v : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_view  -- /usr/include/gsl/gsl_matrix_double.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_view_vector";

   function gsl_matrix_view_vector_with_tda
     (v : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_view  -- /usr/include/gsl/gsl_matrix_double.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_view_vector_with_tda";

   function gsl_matrix_const_submatrix
     (m : access constant gsl_matrix;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_const_view  -- /usr/include/gsl/gsl_matrix_double.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_const_submatrix";

   function gsl_matrix_const_row (m : access constant gsl_matrix; i : size_t) return GSL.Low_Level.gsl_gsl_vector_double_h.u_gsl_vector_const_view  -- /usr/include/gsl/gsl_matrix_double.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_const_row";

   function gsl_matrix_const_column (m : access constant gsl_matrix; j : size_t) return GSL.Low_Level.gsl_gsl_vector_double_h.u_gsl_vector_const_view  -- /usr/include/gsl/gsl_matrix_double.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_const_column";

   function gsl_matrix_const_diagonal (m : access constant gsl_matrix) return GSL.Low_Level.gsl_gsl_vector_double_h.u_gsl_vector_const_view  -- /usr/include/gsl/gsl_matrix_double.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_const_diagonal";

   function gsl_matrix_const_subdiagonal (m : access constant gsl_matrix; k : size_t) return GSL.Low_Level.gsl_gsl_vector_double_h.u_gsl_vector_const_view  -- /usr/include/gsl/gsl_matrix_double.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_const_subdiagonal";

   function gsl_matrix_const_superdiagonal (m : access constant gsl_matrix; k : size_t) return GSL.Low_Level.gsl_gsl_vector_double_h.u_gsl_vector_const_view  -- /usr/include/gsl/gsl_matrix_double.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_const_superdiagonal";

   function gsl_matrix_const_subrow
     (m : access constant gsl_matrix;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_double_h.u_gsl_vector_const_view  -- /usr/include/gsl/gsl_matrix_double.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_const_subrow";

   function gsl_matrix_const_subcolumn
     (m : access constant gsl_matrix;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_double_h.u_gsl_vector_const_view  -- /usr/include/gsl/gsl_matrix_double.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_const_subcolumn";

   function gsl_matrix_const_view_array
     (base : access double;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_const_view  -- /usr/include/gsl/gsl_matrix_double.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_const_view_array";

   function gsl_matrix_const_view_array_with_tda
     (base : access double;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_const_view  -- /usr/include/gsl/gsl_matrix_double.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_const_view_array_with_tda";

   function gsl_matrix_const_view_vector
     (v : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_const_view  -- /usr/include/gsl/gsl_matrix_double.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_const_view_vector";

   function gsl_matrix_const_view_vector_with_tda
     (v : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_const_view  -- /usr/include/gsl/gsl_matrix_double.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_const_view_vector_with_tda";

  -- Operations  
   procedure gsl_matrix_set_zero (m : access gsl_matrix)  -- /usr/include/gsl/gsl_matrix_double.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_set_zero";

   procedure gsl_matrix_set_identity (m : access gsl_matrix)  -- /usr/include/gsl/gsl_matrix_double.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_set_identity";

   procedure gsl_matrix_set_all (m : access gsl_matrix; x : double)  -- /usr/include/gsl/gsl_matrix_double.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_set_all";

   function gsl_matrix_fread (stream : access Interfaces.C_Streams.FILEs; m : access gsl_matrix) return int  -- /usr/include/gsl/gsl_matrix_double.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_fread";

   function gsl_matrix_fwrite (stream : access Interfaces.C_Streams.FILEs; m : access constant gsl_matrix) return int  -- /usr/include/gsl/gsl_matrix_double.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_fwrite";

   function gsl_matrix_fscanf (stream : access Interfaces.C_Streams.FILEs; m : access gsl_matrix) return int  -- /usr/include/gsl/gsl_matrix_double.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_fscanf";

   function gsl_matrix_fprintf
     (stream : access Interfaces.C_Streams.FILEs;
      m : access constant gsl_matrix;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_matrix_double.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_fprintf";

   function gsl_matrix_memcpy (dest : access gsl_matrix; src : access constant gsl_matrix) return int  -- /usr/include/gsl/gsl_matrix_double.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_memcpy";

   function gsl_matrix_swap (m1 : access gsl_matrix; m2 : access gsl_matrix) return int  -- /usr/include/gsl/gsl_matrix_double.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_swap";

   function gsl_matrix_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix;
      src : access constant gsl_matrix) return int  -- /usr/include/gsl/gsl_matrix_double.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_tricpy";

   function gsl_matrix_swap_rows
     (m : access gsl_matrix;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_double.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_swap_rows";

   function gsl_matrix_swap_columns
     (m : access gsl_matrix;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_double.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_swap_columns";

   function gsl_matrix_swap_rowcol
     (m : access gsl_matrix;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_double.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_swap_rowcol";

   function gsl_matrix_transpose (m : access gsl_matrix) return int  -- /usr/include/gsl/gsl_matrix_double.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_transpose";

   function gsl_matrix_transpose_memcpy (dest : access gsl_matrix; src : access constant gsl_matrix) return int  -- /usr/include/gsl/gsl_matrix_double.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_transpose_memcpy";

   function gsl_matrix_transpose_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix;
      src : access constant gsl_matrix) return int  -- /usr/include/gsl/gsl_matrix_double.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_transpose_tricpy";

   function gsl_matrix_max (m : access constant gsl_matrix) return double  -- /usr/include/gsl/gsl_matrix_double.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_max";

   function gsl_matrix_min (m : access constant gsl_matrix) return double  -- /usr/include/gsl/gsl_matrix_double.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_min";

   procedure gsl_matrix_minmax
     (m : access constant gsl_matrix;
      min_out : access double;
      max_out : access double)  -- /usr/include/gsl/gsl_matrix_double.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_minmax";

   procedure gsl_matrix_max_index
     (m : access constant gsl_matrix;
      imax : access size_t;
      jmax : access size_t)  -- /usr/include/gsl/gsl_matrix_double.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_max_index";

   procedure gsl_matrix_min_index
     (m : access constant gsl_matrix;
      imin : access size_t;
      jmin : access size_t)  -- /usr/include/gsl/gsl_matrix_double.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_min_index";

   procedure gsl_matrix_minmax_index
     (m : access constant gsl_matrix;
      imin : access size_t;
      jmin : access size_t;
      imax : access size_t;
      jmax : access size_t)  -- /usr/include/gsl/gsl_matrix_double.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_minmax_index";

   function gsl_matrix_equal (a : access constant gsl_matrix; b : access constant gsl_matrix) return int  -- /usr/include/gsl/gsl_matrix_double.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_equal";

   function gsl_matrix_isnull (m : access constant gsl_matrix) return int  -- /usr/include/gsl/gsl_matrix_double.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_isnull";

   function gsl_matrix_ispos (m : access constant gsl_matrix) return int  -- /usr/include/gsl/gsl_matrix_double.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ispos";

   function gsl_matrix_isneg (m : access constant gsl_matrix) return int  -- /usr/include/gsl/gsl_matrix_double.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_isneg";

   function gsl_matrix_isnonneg (m : access constant gsl_matrix) return int  -- /usr/include/gsl/gsl_matrix_double.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_isnonneg";

   function gsl_matrix_add (a : access gsl_matrix; b : access constant gsl_matrix) return int  -- /usr/include/gsl/gsl_matrix_double.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_add";

   function gsl_matrix_sub (a : access gsl_matrix; b : access constant gsl_matrix) return int  -- /usr/include/gsl/gsl_matrix_double.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_sub";

   function gsl_matrix_mul_elements (a : access gsl_matrix; b : access constant gsl_matrix) return int  -- /usr/include/gsl/gsl_matrix_double.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_mul_elements";

   function gsl_matrix_div_elements (a : access gsl_matrix; b : access constant gsl_matrix) return int  -- /usr/include/gsl/gsl_matrix_double.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_div_elements";

   function gsl_matrix_scale (a : access gsl_matrix; x : double) return int  -- /usr/include/gsl/gsl_matrix_double.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_scale";

   function gsl_matrix_add_constant (a : access gsl_matrix; x : double) return int  -- /usr/include/gsl/gsl_matrix_double.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_add_constant";

   function gsl_matrix_add_diagonal (a : access gsl_matrix; x : double) return int  -- /usr/include/gsl/gsl_matrix_double.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_add_diagonal";

  --********************************************************************* 
  -- The functions below are obsolete                                     
  --********************************************************************* 
   function gsl_matrix_get_row
     (v : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      m : access constant gsl_matrix;
      i : size_t) return int  -- /usr/include/gsl/gsl_matrix_double.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_get_row";

   function gsl_matrix_get_col
     (v : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      m : access constant gsl_matrix;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_double.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_get_col";

   function gsl_matrix_set_row
     (m : access gsl_matrix;
      i : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_matrix_double.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_set_row";

   function gsl_matrix_set_col
     (m : access gsl_matrix;
      j : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_matrix_double.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_set_col";

  --********************************************************************* 
  -- inline functions if you are using GCC  
   function gsl_matrix_get
     (m : access constant gsl_matrix;
      i : size_t;
      j : size_t) return double  -- /usr/include/gsl/gsl_matrix_double.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_get";

   procedure gsl_matrix_set
     (m : access gsl_matrix;
      i : size_t;
      j : size_t;
      x : double)  -- /usr/include/gsl/gsl_matrix_double.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_set";

   function gsl_matrix_ptr
     (arg1 : access gsl_matrix;
      arg2 : size_t;
      arg3 : size_t) return access double  -- /usr/include/gsl/gsl_matrix_double.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_ptr";

   function gsl_matrix_const_ptr
     (arg1 : access constant gsl_matrix;
      arg2 : size_t;
      arg3 : size_t) return access double  -- /usr/include/gsl/gsl_matrix_double.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_const_ptr";

end GSL.Low_Level.gsl_gsl_matrix_double_h;
