pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_block_long_double_h;
with GSL.Low_Level.gsl_gsl_vector_long_double_h;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_matrix_long_double_h is

  -- matrix/gsl_matrix_long_double.h
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

   type gsl_matrix_long_double is record
      size1 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_long_double.h:44
      size2 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_long_double.h:45
      tda : aliased size_t;  -- /usr/include/gsl/gsl_matrix_long_double.h:46
      data : access long_double;  -- /usr/include/gsl/gsl_matrix_long_double.h:47
      block : access GSL.Low_Level.gsl_gsl_block_long_double_h.gsl_block_long_double;  -- /usr/include/gsl/gsl_matrix_long_double.h:48
      owner : aliased int;  -- /usr/include/gsl/gsl_matrix_long_double.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_long_double.h:50

   type u_gsl_matrix_long_double_view is record
      matrix : aliased gsl_matrix_long_double;  -- /usr/include/gsl/gsl_matrix_long_double.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_long_double.h:55

   subtype gsl_matrix_long_double_view is u_gsl_matrix_long_double_view;  -- /usr/include/gsl/gsl_matrix_long_double.h:57

   type u_gsl_matrix_long_double_const_view is record
      matrix : aliased gsl_matrix_long_double;  -- /usr/include/gsl/gsl_matrix_long_double.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_long_double.h:62

   subtype gsl_matrix_long_double_const_view is u_gsl_matrix_long_double_const_view;  -- /usr/include/gsl/gsl_matrix_long_double.h:64

  -- Allocation  
   function gsl_matrix_long_double_alloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix_long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_alloc";

   function gsl_matrix_long_double_calloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix_long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_calloc";

   function gsl_matrix_long_double_alloc_from_block
     (arg1 : access GSL.Low_Level.gsl_gsl_block_long_double_h.gsl_block_long_double;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix_long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_alloc_from_block";

   function gsl_matrix_long_double_alloc_from_matrix
     (arg1 : access gsl_matrix_long_double;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix_long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_alloc_from_matrix";

   function gsl_vector_long_double_alloc_row_from_matrix (arg1 : access gsl_matrix_long_double; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_long_double_h.gsl_vector_long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_double_alloc_row_from_matrix";

   function gsl_vector_long_double_alloc_col_from_matrix (arg1 : access gsl_matrix_long_double; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_long_double_h.gsl_vector_long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_double_alloc_col_from_matrix";

   procedure gsl_matrix_long_double_free (m : access gsl_matrix_long_double)  -- /usr/include/gsl/gsl_matrix_long_double.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_free";

  -- Views  
   function gsl_matrix_long_double_submatrix
     (m : access gsl_matrix_long_double;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_submatrix";

   function gsl_matrix_long_double_row (m : access gsl_matrix_long_double; i : size_t) return GSL.Low_Level.gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_row";

   function gsl_matrix_long_double_column (m : access gsl_matrix_long_double; j : size_t) return GSL.Low_Level.gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_column";

   function gsl_matrix_long_double_diagonal (m : access gsl_matrix_long_double) return GSL.Low_Level.gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_diagonal";

   function gsl_matrix_long_double_subdiagonal (m : access gsl_matrix_long_double; k : size_t) return GSL.Low_Level.gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_subdiagonal";

   function gsl_matrix_long_double_superdiagonal (m : access gsl_matrix_long_double; k : size_t) return GSL.Low_Level.gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_superdiagonal";

   function gsl_matrix_long_double_subrow
     (m : access gsl_matrix_long_double;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_subrow";

   function gsl_matrix_long_double_subcolumn
     (m : access gsl_matrix_long_double;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_subcolumn";

   function gsl_matrix_long_double_view_array
     (base : access long_double;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_view_array";

   function gsl_matrix_long_double_view_array_with_tda
     (base : access long_double;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_view_array_with_tda";

   function gsl_matrix_long_double_view_vector
     (v : access GSL.Low_Level.gsl_gsl_vector_long_double_h.gsl_vector_long_double;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_view_vector";

   function gsl_matrix_long_double_view_vector_with_tda
     (v : access GSL.Low_Level.gsl_gsl_vector_long_double_h.gsl_vector_long_double;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_view_vector_with_tda";

   function gsl_matrix_long_double_const_submatrix
     (m : access constant gsl_matrix_long_double;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_submatrix";

   function gsl_matrix_long_double_const_row (m : access constant gsl_matrix_long_double; i : size_t) return GSL.Low_Level.gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_row";

   function gsl_matrix_long_double_const_column (m : access constant gsl_matrix_long_double; j : size_t) return GSL.Low_Level.gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_column";

   function gsl_matrix_long_double_const_diagonal (m : access constant gsl_matrix_long_double) return GSL.Low_Level.gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_diagonal";

   function gsl_matrix_long_double_const_subdiagonal (m : access constant gsl_matrix_long_double; k : size_t) return GSL.Low_Level.gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_subdiagonal";

   function gsl_matrix_long_double_const_superdiagonal (m : access constant gsl_matrix_long_double; k : size_t) return GSL.Low_Level.gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_superdiagonal";

   function gsl_matrix_long_double_const_subrow
     (m : access constant gsl_matrix_long_double;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_subrow";

   function gsl_matrix_long_double_const_subcolumn
     (m : access constant gsl_matrix_long_double;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_subcolumn";

   function gsl_matrix_long_double_const_view_array
     (base : access long_double;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_view_array";

   function gsl_matrix_long_double_const_view_array_with_tda
     (base : access long_double;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_view_array_with_tda";

   function gsl_matrix_long_double_const_view_vector
     (v : access constant GSL.Low_Level.gsl_gsl_vector_long_double_h.gsl_vector_long_double;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_view_vector";

   function gsl_matrix_long_double_const_view_vector_with_tda
     (v : access constant GSL.Low_Level.gsl_gsl_vector_long_double_h.gsl_vector_long_double;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_view_vector_with_tda";

  -- Operations  
   procedure gsl_matrix_long_double_set_zero (m : access gsl_matrix_long_double)  -- /usr/include/gsl/gsl_matrix_long_double.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_set_zero";

   procedure gsl_matrix_long_double_set_identity (m : access gsl_matrix_long_double)  -- /usr/include/gsl/gsl_matrix_long_double.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_set_identity";

   procedure gsl_matrix_long_double_set_all (m : access gsl_matrix_long_double; x : long_double)  -- /usr/include/gsl/gsl_matrix_long_double.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_set_all";

   function gsl_matrix_long_double_fread (stream : access Interfaces.C_Streams.FILEs; m : access gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_fread";

   function gsl_matrix_long_double_fwrite (stream : access Interfaces.C_Streams.FILEs; m : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_fwrite";

   function gsl_matrix_long_double_fscanf (stream : access Interfaces.C_Streams.FILEs; m : access gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_fscanf";

   function gsl_matrix_long_double_fprintf
     (stream : access Interfaces.C_Streams.FILEs;
      m : access constant gsl_matrix_long_double;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_fprintf";

   function gsl_matrix_long_double_memcpy (dest : access gsl_matrix_long_double; src : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_memcpy";

   function gsl_matrix_long_double_swap (m1 : access gsl_matrix_long_double; m2 : access gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_swap";

   function gsl_matrix_long_double_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix_long_double;
      src : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_tricpy";

   function gsl_matrix_long_double_swap_rows
     (m : access gsl_matrix_long_double;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_swap_rows";

   function gsl_matrix_long_double_swap_columns
     (m : access gsl_matrix_long_double;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_swap_columns";

   function gsl_matrix_long_double_swap_rowcol
     (m : access gsl_matrix_long_double;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_swap_rowcol";

   function gsl_matrix_long_double_transpose (m : access gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_transpose";

   function gsl_matrix_long_double_transpose_memcpy (dest : access gsl_matrix_long_double; src : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_transpose_memcpy";

   function gsl_matrix_long_double_transpose_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix_long_double;
      src : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_transpose_tricpy";

   function gsl_matrix_long_double_max (m : access constant gsl_matrix_long_double) return long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_max";

   function gsl_matrix_long_double_min (m : access constant gsl_matrix_long_double) return long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_min";

   procedure gsl_matrix_long_double_minmax
     (m : access constant gsl_matrix_long_double;
      min_out : access long_double;
      max_out : access long_double)  -- /usr/include/gsl/gsl_matrix_long_double.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_minmax";

   procedure gsl_matrix_long_double_max_index
     (m : access constant gsl_matrix_long_double;
      imax : access size_t;
      jmax : access size_t)  -- /usr/include/gsl/gsl_matrix_long_double.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_max_index";

   procedure gsl_matrix_long_double_min_index
     (m : access constant gsl_matrix_long_double;
      imin : access size_t;
      jmin : access size_t)  -- /usr/include/gsl/gsl_matrix_long_double.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_min_index";

   procedure gsl_matrix_long_double_minmax_index
     (m : access constant gsl_matrix_long_double;
      imin : access size_t;
      jmin : access size_t;
      imax : access size_t;
      jmax : access size_t)  -- /usr/include/gsl/gsl_matrix_long_double.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_minmax_index";

   function gsl_matrix_long_double_equal (a : access constant gsl_matrix_long_double; b : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_equal";

   function gsl_matrix_long_double_isnull (m : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_isnull";

   function gsl_matrix_long_double_ispos (m : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_ispos";

   function gsl_matrix_long_double_isneg (m : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_isneg";

   function gsl_matrix_long_double_isnonneg (m : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_isnonneg";

   function gsl_matrix_long_double_add (a : access gsl_matrix_long_double; b : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_add";

   function gsl_matrix_long_double_sub (a : access gsl_matrix_long_double; b : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_sub";

   function gsl_matrix_long_double_mul_elements (a : access gsl_matrix_long_double; b : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_mul_elements";

   function gsl_matrix_long_double_div_elements (a : access gsl_matrix_long_double; b : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_div_elements";

   function gsl_matrix_long_double_scale (a : access gsl_matrix_long_double; x : double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_scale";

   function gsl_matrix_long_double_add_constant (a : access gsl_matrix_long_double; x : double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_add_constant";

   function gsl_matrix_long_double_add_diagonal (a : access gsl_matrix_long_double; x : double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_add_diagonal";

  --********************************************************************* 
  -- The functions below are obsolete                                     
  --********************************************************************* 
   function gsl_matrix_long_double_get_row
     (v : access GSL.Low_Level.gsl_gsl_vector_long_double_h.gsl_vector_long_double;
      m : access constant gsl_matrix_long_double;
      i : size_t) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_get_row";

   function gsl_matrix_long_double_get_col
     (v : access GSL.Low_Level.gsl_gsl_vector_long_double_h.gsl_vector_long_double;
      m : access constant gsl_matrix_long_double;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_get_col";

   function gsl_matrix_long_double_set_row
     (m : access gsl_matrix_long_double;
      i : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_long_double_h.gsl_vector_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_set_row";

   function gsl_matrix_long_double_set_col
     (m : access gsl_matrix_long_double;
      j : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_long_double_h.gsl_vector_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_set_col";

  --********************************************************************* 
  -- inline functions if you are using GCC  
   function gsl_matrix_long_double_get
     (m : access constant gsl_matrix_long_double;
      i : size_t;
      j : size_t) return long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_get";

   procedure gsl_matrix_long_double_set
     (m : access gsl_matrix_long_double;
      i : size_t;
      j : size_t;
      x : long_double)  -- /usr/include/gsl/gsl_matrix_long_double.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_set";

   function gsl_matrix_long_double_ptr
     (arg1 : access gsl_matrix_long_double;
      arg2 : size_t;
      arg3 : size_t) return access long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_ptr";

   function gsl_matrix_long_double_const_ptr
     (arg1 : access constant gsl_matrix_long_double;
      arg2 : size_t;
      arg3 : size_t) return access long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_ptr";

end GSL.Low_Level.gsl_gsl_matrix_long_double_h;
