pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_block_uint_h;
with GSL.Low_Level.gsl_gsl_vector_uint_h;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_matrix_uint_h is

  -- matrix/gsl_matrix_uint.h
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

   type gsl_matrix_uint is record
      size1 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_uint.h:44
      size2 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_uint.h:45
      tda : aliased size_t;  -- /usr/include/gsl/gsl_matrix_uint.h:46
      data : access unsigned;  -- /usr/include/gsl/gsl_matrix_uint.h:47
      block : access GSL.Low_Level.gsl_gsl_block_uint_h.gsl_block_uint;  -- /usr/include/gsl/gsl_matrix_uint.h:48
      owner : aliased int;  -- /usr/include/gsl/gsl_matrix_uint.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_uint.h:50

   type u_gsl_matrix_uint_view is record
      matrix : aliased gsl_matrix_uint;  -- /usr/include/gsl/gsl_matrix_uint.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_uint.h:55

   subtype gsl_matrix_uint_view is u_gsl_matrix_uint_view;  -- /usr/include/gsl/gsl_matrix_uint.h:57

   type u_gsl_matrix_uint_const_view is record
      matrix : aliased gsl_matrix_uint;  -- /usr/include/gsl/gsl_matrix_uint.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_uint.h:62

   subtype gsl_matrix_uint_const_view is u_gsl_matrix_uint_const_view;  -- /usr/include/gsl/gsl_matrix_uint.h:64

  -- Allocation  
   function gsl_matrix_uint_alloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix_uint  -- /usr/include/gsl/gsl_matrix_uint.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_alloc";

   function gsl_matrix_uint_calloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix_uint  -- /usr/include/gsl/gsl_matrix_uint.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_calloc";

   function gsl_matrix_uint_alloc_from_block
     (arg1 : access GSL.Low_Level.gsl_gsl_block_uint_h.gsl_block_uint;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix_uint  -- /usr/include/gsl/gsl_matrix_uint.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_alloc_from_block";

   function gsl_matrix_uint_alloc_from_matrix
     (arg1 : access gsl_matrix_uint;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix_uint  -- /usr/include/gsl/gsl_matrix_uint.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_alloc_from_matrix";

   function gsl_vector_uint_alloc_row_from_matrix (arg1 : access gsl_matrix_uint; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_uint_h.gsl_vector_uint  -- /usr/include/gsl/gsl_matrix_uint.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_alloc_row_from_matrix";

   function gsl_vector_uint_alloc_col_from_matrix (arg1 : access gsl_matrix_uint; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_uint_h.gsl_vector_uint  -- /usr/include/gsl/gsl_matrix_uint.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_alloc_col_from_matrix";

   procedure gsl_matrix_uint_free (m : access gsl_matrix_uint)  -- /usr/include/gsl/gsl_matrix_uint.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_free";

  -- Views  
   function gsl_matrix_uint_submatrix
     (m : access gsl_matrix_uint;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_uint_view  -- /usr/include/gsl/gsl_matrix_uint.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_submatrix";

   function gsl_matrix_uint_row (m : access gsl_matrix_uint; i : size_t) return GSL.Low_Level.gsl_gsl_vector_uint_h.u_gsl_vector_uint_view  -- /usr/include/gsl/gsl_matrix_uint.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_row";

   function gsl_matrix_uint_column (m : access gsl_matrix_uint; j : size_t) return GSL.Low_Level.gsl_gsl_vector_uint_h.u_gsl_vector_uint_view  -- /usr/include/gsl/gsl_matrix_uint.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_column";

   function gsl_matrix_uint_diagonal (m : access gsl_matrix_uint) return GSL.Low_Level.gsl_gsl_vector_uint_h.u_gsl_vector_uint_view  -- /usr/include/gsl/gsl_matrix_uint.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_diagonal";

   function gsl_matrix_uint_subdiagonal (m : access gsl_matrix_uint; k : size_t) return GSL.Low_Level.gsl_gsl_vector_uint_h.u_gsl_vector_uint_view  -- /usr/include/gsl/gsl_matrix_uint.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_subdiagonal";

   function gsl_matrix_uint_superdiagonal (m : access gsl_matrix_uint; k : size_t) return GSL.Low_Level.gsl_gsl_vector_uint_h.u_gsl_vector_uint_view  -- /usr/include/gsl/gsl_matrix_uint.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_superdiagonal";

   function gsl_matrix_uint_subrow
     (m : access gsl_matrix_uint;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_uint_h.u_gsl_vector_uint_view  -- /usr/include/gsl/gsl_matrix_uint.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_subrow";

   function gsl_matrix_uint_subcolumn
     (m : access gsl_matrix_uint;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_uint_h.u_gsl_vector_uint_view  -- /usr/include/gsl/gsl_matrix_uint.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_subcolumn";

   function gsl_matrix_uint_view_array
     (base : access unsigned;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_uint_view  -- /usr/include/gsl/gsl_matrix_uint.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_view_array";

   function gsl_matrix_uint_view_array_with_tda
     (base : access unsigned;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_uint_view  -- /usr/include/gsl/gsl_matrix_uint.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_view_array_with_tda";

   function gsl_matrix_uint_view_vector
     (v : access GSL.Low_Level.gsl_gsl_vector_uint_h.gsl_vector_uint;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_uint_view  -- /usr/include/gsl/gsl_matrix_uint.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_view_vector";

   function gsl_matrix_uint_view_vector_with_tda
     (v : access GSL.Low_Level.gsl_gsl_vector_uint_h.gsl_vector_uint;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_uint_view  -- /usr/include/gsl/gsl_matrix_uint.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_view_vector_with_tda";

   function gsl_matrix_uint_const_submatrix
     (m : access constant gsl_matrix_uint;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_uint_const_view  -- /usr/include/gsl/gsl_matrix_uint.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_const_submatrix";

   function gsl_matrix_uint_const_row (m : access constant gsl_matrix_uint; i : size_t) return GSL.Low_Level.gsl_gsl_vector_uint_h.u_gsl_vector_uint_const_view  -- /usr/include/gsl/gsl_matrix_uint.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_const_row";

   function gsl_matrix_uint_const_column (m : access constant gsl_matrix_uint; j : size_t) return GSL.Low_Level.gsl_gsl_vector_uint_h.u_gsl_vector_uint_const_view  -- /usr/include/gsl/gsl_matrix_uint.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_const_column";

   function gsl_matrix_uint_const_diagonal (m : access constant gsl_matrix_uint) return GSL.Low_Level.gsl_gsl_vector_uint_h.u_gsl_vector_uint_const_view  -- /usr/include/gsl/gsl_matrix_uint.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_const_diagonal";

   function gsl_matrix_uint_const_subdiagonal (m : access constant gsl_matrix_uint; k : size_t) return GSL.Low_Level.gsl_gsl_vector_uint_h.u_gsl_vector_uint_const_view  -- /usr/include/gsl/gsl_matrix_uint.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_const_subdiagonal";

   function gsl_matrix_uint_const_superdiagonal (m : access constant gsl_matrix_uint; k : size_t) return GSL.Low_Level.gsl_gsl_vector_uint_h.u_gsl_vector_uint_const_view  -- /usr/include/gsl/gsl_matrix_uint.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_const_superdiagonal";

   function gsl_matrix_uint_const_subrow
     (m : access constant gsl_matrix_uint;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_uint_h.u_gsl_vector_uint_const_view  -- /usr/include/gsl/gsl_matrix_uint.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_const_subrow";

   function gsl_matrix_uint_const_subcolumn
     (m : access constant gsl_matrix_uint;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_uint_h.u_gsl_vector_uint_const_view  -- /usr/include/gsl/gsl_matrix_uint.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_const_subcolumn";

   function gsl_matrix_uint_const_view_array
     (base : access unsigned;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_uint_const_view  -- /usr/include/gsl/gsl_matrix_uint.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_const_view_array";

   function gsl_matrix_uint_const_view_array_with_tda
     (base : access unsigned;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_uint_const_view  -- /usr/include/gsl/gsl_matrix_uint.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_const_view_array_with_tda";

   function gsl_matrix_uint_const_view_vector
     (v : access constant GSL.Low_Level.gsl_gsl_vector_uint_h.gsl_vector_uint;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_uint_const_view  -- /usr/include/gsl/gsl_matrix_uint.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_const_view_vector";

   function gsl_matrix_uint_const_view_vector_with_tda
     (v : access constant GSL.Low_Level.gsl_gsl_vector_uint_h.gsl_vector_uint;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_uint_const_view  -- /usr/include/gsl/gsl_matrix_uint.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_const_view_vector_with_tda";

  -- Operations  
   procedure gsl_matrix_uint_set_zero (m : access gsl_matrix_uint)  -- /usr/include/gsl/gsl_matrix_uint.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_set_zero";

   procedure gsl_matrix_uint_set_identity (m : access gsl_matrix_uint)  -- /usr/include/gsl/gsl_matrix_uint.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_set_identity";

   procedure gsl_matrix_uint_set_all (m : access gsl_matrix_uint; x : unsigned)  -- /usr/include/gsl/gsl_matrix_uint.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_set_all";

   function gsl_matrix_uint_fread (stream : Interfaces.C_Streams.FILEs; m : access gsl_matrix_uint) return int  -- /usr/include/gsl/gsl_matrix_uint.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_fread";

   function gsl_matrix_uint_fwrite (stream : Interfaces.C_Streams.FILEs; m : access constant gsl_matrix_uint) return int  -- /usr/include/gsl/gsl_matrix_uint.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_fwrite";

   function gsl_matrix_uint_fscanf (stream : Interfaces.C_Streams.FILEs; m : access gsl_matrix_uint) return int  -- /usr/include/gsl/gsl_matrix_uint.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_fscanf";

   function gsl_matrix_uint_fprintf
     (stream : Interfaces.C_Streams.FILEs;
      m : access constant gsl_matrix_uint;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_matrix_uint.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_fprintf";

   function gsl_matrix_uint_memcpy (dest : access gsl_matrix_uint; src : access constant gsl_matrix_uint) return int  -- /usr/include/gsl/gsl_matrix_uint.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_memcpy";

   function gsl_matrix_uint_swap (m1 : access gsl_matrix_uint; m2 : access gsl_matrix_uint) return int  -- /usr/include/gsl/gsl_matrix_uint.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_swap";

   function gsl_matrix_uint_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix_uint;
      src : access constant gsl_matrix_uint) return int  -- /usr/include/gsl/gsl_matrix_uint.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_tricpy";

   function gsl_matrix_uint_swap_rows
     (m : access gsl_matrix_uint;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_uint.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_swap_rows";

   function gsl_matrix_uint_swap_columns
     (m : access gsl_matrix_uint;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_uint.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_swap_columns";

   function gsl_matrix_uint_swap_rowcol
     (m : access gsl_matrix_uint;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_uint.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_swap_rowcol";

   function gsl_matrix_uint_transpose (m : access gsl_matrix_uint) return int  -- /usr/include/gsl/gsl_matrix_uint.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_transpose";

   function gsl_matrix_uint_transpose_memcpy (dest : access gsl_matrix_uint; src : access constant gsl_matrix_uint) return int  -- /usr/include/gsl/gsl_matrix_uint.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_transpose_memcpy";

   function gsl_matrix_uint_transpose_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix_uint;
      src : access constant gsl_matrix_uint) return int  -- /usr/include/gsl/gsl_matrix_uint.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_transpose_tricpy";

   function gsl_matrix_uint_max (m : access constant gsl_matrix_uint) return unsigned  -- /usr/include/gsl/gsl_matrix_uint.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_max";

   function gsl_matrix_uint_min (m : access constant gsl_matrix_uint) return unsigned  -- /usr/include/gsl/gsl_matrix_uint.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_min";

   procedure gsl_matrix_uint_minmax
     (m : access constant gsl_matrix_uint;
      min_out : access unsigned;
      max_out : access unsigned)  -- /usr/include/gsl/gsl_matrix_uint.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_minmax";

   procedure gsl_matrix_uint_max_index
     (m : access constant gsl_matrix_uint;
      imax : access size_t;
      jmax : access size_t)  -- /usr/include/gsl/gsl_matrix_uint.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_max_index";

   procedure gsl_matrix_uint_min_index
     (m : access constant gsl_matrix_uint;
      imin : access size_t;
      jmin : access size_t)  -- /usr/include/gsl/gsl_matrix_uint.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_min_index";

   procedure gsl_matrix_uint_minmax_index
     (m : access constant gsl_matrix_uint;
      imin : access size_t;
      jmin : access size_t;
      imax : access size_t;
      jmax : access size_t)  -- /usr/include/gsl/gsl_matrix_uint.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_minmax_index";

   function gsl_matrix_uint_equal (a : access constant gsl_matrix_uint; b : access constant gsl_matrix_uint) return int  -- /usr/include/gsl/gsl_matrix_uint.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_equal";

   function gsl_matrix_uint_isnull (m : access constant gsl_matrix_uint) return int  -- /usr/include/gsl/gsl_matrix_uint.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_isnull";

   function gsl_matrix_uint_ispos (m : access constant gsl_matrix_uint) return int  -- /usr/include/gsl/gsl_matrix_uint.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_ispos";

   function gsl_matrix_uint_isneg (m : access constant gsl_matrix_uint) return int  -- /usr/include/gsl/gsl_matrix_uint.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_isneg";

   function gsl_matrix_uint_isnonneg (m : access constant gsl_matrix_uint) return int  -- /usr/include/gsl/gsl_matrix_uint.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_isnonneg";

   function gsl_matrix_uint_add (a : access gsl_matrix_uint; b : access constant gsl_matrix_uint) return int  -- /usr/include/gsl/gsl_matrix_uint.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_add";

   function gsl_matrix_uint_sub (a : access gsl_matrix_uint; b : access constant gsl_matrix_uint) return int  -- /usr/include/gsl/gsl_matrix_uint.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_sub";

   function gsl_matrix_uint_mul_elements (a : access gsl_matrix_uint; b : access constant gsl_matrix_uint) return int  -- /usr/include/gsl/gsl_matrix_uint.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_mul_elements";

   function gsl_matrix_uint_div_elements (a : access gsl_matrix_uint; b : access constant gsl_matrix_uint) return int  -- /usr/include/gsl/gsl_matrix_uint.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_div_elements";

   function gsl_matrix_uint_scale (a : access gsl_matrix_uint; x : double) return int  -- /usr/include/gsl/gsl_matrix_uint.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_scale";

   function gsl_matrix_uint_add_constant (a : access gsl_matrix_uint; x : double) return int  -- /usr/include/gsl/gsl_matrix_uint.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_add_constant";

   function gsl_matrix_uint_add_diagonal (a : access gsl_matrix_uint; x : double) return int  -- /usr/include/gsl/gsl_matrix_uint.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_add_diagonal";

  --********************************************************************* 
  -- The functions below are obsolete                                     
  --********************************************************************* 
   function gsl_matrix_uint_get_row
     (v : access GSL.Low_Level.gsl_gsl_vector_uint_h.gsl_vector_uint;
      m : access constant gsl_matrix_uint;
      i : size_t) return int  -- /usr/include/gsl/gsl_matrix_uint.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_get_row";

   function gsl_matrix_uint_get_col
     (v : access GSL.Low_Level.gsl_gsl_vector_uint_h.gsl_vector_uint;
      m : access constant gsl_matrix_uint;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_uint.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_get_col";

   function gsl_matrix_uint_set_row
     (m : access gsl_matrix_uint;
      i : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_uint_h.gsl_vector_uint) return int  -- /usr/include/gsl/gsl_matrix_uint.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_set_row";

   function gsl_matrix_uint_set_col
     (m : access gsl_matrix_uint;
      j : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_uint_h.gsl_vector_uint) return int  -- /usr/include/gsl/gsl_matrix_uint.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_set_col";

  --********************************************************************* 
  -- inline functions if you are using GCC  
   function gsl_matrix_uint_get
     (m : access constant gsl_matrix_uint;
      i : size_t;
      j : size_t) return unsigned  -- /usr/include/gsl/gsl_matrix_uint.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_get";

   procedure gsl_matrix_uint_set
     (m : access gsl_matrix_uint;
      i : size_t;
      j : size_t;
      x : unsigned)  -- /usr/include/gsl/gsl_matrix_uint.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_set";

   function gsl_matrix_uint_ptr
     (arg1 : access gsl_matrix_uint;
      arg2 : size_t;
      arg3 : size_t) return access unsigned  -- /usr/include/gsl/gsl_matrix_uint.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_ptr";

   function gsl_matrix_uint_const_ptr
     (arg1 : access constant gsl_matrix_uint;
      arg2 : size_t;
      arg3 : size_t) return access unsigned  -- /usr/include/gsl/gsl_matrix_uint.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uint_const_ptr";

end GSL.Low_Level.gsl_gsl_matrix_uint_h;
