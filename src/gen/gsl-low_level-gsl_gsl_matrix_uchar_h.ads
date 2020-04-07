pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_block_uchar_h;
with GSL.Low_Level.gsl_gsl_vector_uchar_h;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_matrix_uchar_h is

  -- matrix/gsl_matrix_uchar.h
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

   type gsl_matrix_uchar is record
      size1 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_uchar.h:44
      size2 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_uchar.h:45
      tda : aliased size_t;  -- /usr/include/gsl/gsl_matrix_uchar.h:46
      data : access unsigned_char;  -- /usr/include/gsl/gsl_matrix_uchar.h:47
      block : access GSL.Low_Level.gsl_gsl_block_uchar_h.gsl_block_uchar;  -- /usr/include/gsl/gsl_matrix_uchar.h:48
      owner : aliased int;  -- /usr/include/gsl/gsl_matrix_uchar.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_uchar.h:50

   type u_gsl_matrix_uchar_view is record
      matrix : aliased gsl_matrix_uchar;  -- /usr/include/gsl/gsl_matrix_uchar.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_uchar.h:55

   subtype gsl_matrix_uchar_view is u_gsl_matrix_uchar_view;  -- /usr/include/gsl/gsl_matrix_uchar.h:57

   type u_gsl_matrix_uchar_const_view is record
      matrix : aliased gsl_matrix_uchar;  -- /usr/include/gsl/gsl_matrix_uchar.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_uchar.h:62

   subtype gsl_matrix_uchar_const_view is u_gsl_matrix_uchar_const_view;  -- /usr/include/gsl/gsl_matrix_uchar.h:64

  -- Allocation  
   function gsl_matrix_uchar_alloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix_uchar  -- /usr/include/gsl/gsl_matrix_uchar.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_alloc";

   function gsl_matrix_uchar_calloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix_uchar  -- /usr/include/gsl/gsl_matrix_uchar.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_calloc";

   function gsl_matrix_uchar_alloc_from_block
     (arg1 : access GSL.Low_Level.gsl_gsl_block_uchar_h.gsl_block_uchar;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix_uchar  -- /usr/include/gsl/gsl_matrix_uchar.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_alloc_from_block";

   function gsl_matrix_uchar_alloc_from_matrix
     (arg1 : access gsl_matrix_uchar;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix_uchar  -- /usr/include/gsl/gsl_matrix_uchar.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_alloc_from_matrix";

   function gsl_vector_uchar_alloc_row_from_matrix (arg1 : access gsl_matrix_uchar; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_uchar_h.gsl_vector_uchar  -- /usr/include/gsl/gsl_matrix_uchar.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uchar_alloc_row_from_matrix";

   function gsl_vector_uchar_alloc_col_from_matrix (arg1 : access gsl_matrix_uchar; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_uchar_h.gsl_vector_uchar  -- /usr/include/gsl/gsl_matrix_uchar.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uchar_alloc_col_from_matrix";

   procedure gsl_matrix_uchar_free (m : access gsl_matrix_uchar)  -- /usr/include/gsl/gsl_matrix_uchar.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_free";

  -- Views  
   function gsl_matrix_uchar_submatrix
     (m : access gsl_matrix_uchar;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_uchar_view  -- /usr/include/gsl/gsl_matrix_uchar.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_submatrix";

   function gsl_matrix_uchar_row (m : access gsl_matrix_uchar; i : size_t) return GSL.Low_Level.gsl_gsl_vector_uchar_h.u_gsl_vector_uchar_view  -- /usr/include/gsl/gsl_matrix_uchar.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_row";

   function gsl_matrix_uchar_column (m : access gsl_matrix_uchar; j : size_t) return GSL.Low_Level.gsl_gsl_vector_uchar_h.u_gsl_vector_uchar_view  -- /usr/include/gsl/gsl_matrix_uchar.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_column";

   function gsl_matrix_uchar_diagonal (m : access gsl_matrix_uchar) return GSL.Low_Level.gsl_gsl_vector_uchar_h.u_gsl_vector_uchar_view  -- /usr/include/gsl/gsl_matrix_uchar.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_diagonal";

   function gsl_matrix_uchar_subdiagonal (m : access gsl_matrix_uchar; k : size_t) return GSL.Low_Level.gsl_gsl_vector_uchar_h.u_gsl_vector_uchar_view  -- /usr/include/gsl/gsl_matrix_uchar.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_subdiagonal";

   function gsl_matrix_uchar_superdiagonal (m : access gsl_matrix_uchar; k : size_t) return GSL.Low_Level.gsl_gsl_vector_uchar_h.u_gsl_vector_uchar_view  -- /usr/include/gsl/gsl_matrix_uchar.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_superdiagonal";

   function gsl_matrix_uchar_subrow
     (m : access gsl_matrix_uchar;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_uchar_h.u_gsl_vector_uchar_view  -- /usr/include/gsl/gsl_matrix_uchar.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_subrow";

   function gsl_matrix_uchar_subcolumn
     (m : access gsl_matrix_uchar;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_uchar_h.u_gsl_vector_uchar_view  -- /usr/include/gsl/gsl_matrix_uchar.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_subcolumn";

   function gsl_matrix_uchar_view_array
     (base : access unsigned_char;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_uchar_view  -- /usr/include/gsl/gsl_matrix_uchar.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_view_array";

   function gsl_matrix_uchar_view_array_with_tda
     (base : access unsigned_char;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_uchar_view  -- /usr/include/gsl/gsl_matrix_uchar.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_view_array_with_tda";

   function gsl_matrix_uchar_view_vector
     (v : access GSL.Low_Level.gsl_gsl_vector_uchar_h.gsl_vector_uchar;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_uchar_view  -- /usr/include/gsl/gsl_matrix_uchar.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_view_vector";

   function gsl_matrix_uchar_view_vector_with_tda
     (v : access GSL.Low_Level.gsl_gsl_vector_uchar_h.gsl_vector_uchar;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_uchar_view  -- /usr/include/gsl/gsl_matrix_uchar.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_view_vector_with_tda";

   function gsl_matrix_uchar_const_submatrix
     (m : access constant gsl_matrix_uchar;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_uchar_const_view  -- /usr/include/gsl/gsl_matrix_uchar.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_const_submatrix";

   function gsl_matrix_uchar_const_row (m : access constant gsl_matrix_uchar; i : size_t) return GSL.Low_Level.gsl_gsl_vector_uchar_h.u_gsl_vector_uchar_const_view  -- /usr/include/gsl/gsl_matrix_uchar.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_const_row";

   function gsl_matrix_uchar_const_column (m : access constant gsl_matrix_uchar; j : size_t) return GSL.Low_Level.gsl_gsl_vector_uchar_h.u_gsl_vector_uchar_const_view  -- /usr/include/gsl/gsl_matrix_uchar.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_const_column";

   function gsl_matrix_uchar_const_diagonal (m : access constant gsl_matrix_uchar) return GSL.Low_Level.gsl_gsl_vector_uchar_h.u_gsl_vector_uchar_const_view  -- /usr/include/gsl/gsl_matrix_uchar.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_const_diagonal";

   function gsl_matrix_uchar_const_subdiagonal (m : access constant gsl_matrix_uchar; k : size_t) return GSL.Low_Level.gsl_gsl_vector_uchar_h.u_gsl_vector_uchar_const_view  -- /usr/include/gsl/gsl_matrix_uchar.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_const_subdiagonal";

   function gsl_matrix_uchar_const_superdiagonal (m : access constant gsl_matrix_uchar; k : size_t) return GSL.Low_Level.gsl_gsl_vector_uchar_h.u_gsl_vector_uchar_const_view  -- /usr/include/gsl/gsl_matrix_uchar.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_const_superdiagonal";

   function gsl_matrix_uchar_const_subrow
     (m : access constant gsl_matrix_uchar;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_uchar_h.u_gsl_vector_uchar_const_view  -- /usr/include/gsl/gsl_matrix_uchar.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_const_subrow";

   function gsl_matrix_uchar_const_subcolumn
     (m : access constant gsl_matrix_uchar;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_uchar_h.u_gsl_vector_uchar_const_view  -- /usr/include/gsl/gsl_matrix_uchar.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_const_subcolumn";

   function gsl_matrix_uchar_const_view_array
     (base : access unsigned_char;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_uchar_const_view  -- /usr/include/gsl/gsl_matrix_uchar.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_const_view_array";

   function gsl_matrix_uchar_const_view_array_with_tda
     (base : access unsigned_char;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_uchar_const_view  -- /usr/include/gsl/gsl_matrix_uchar.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_const_view_array_with_tda";

   function gsl_matrix_uchar_const_view_vector
     (v : access constant GSL.Low_Level.gsl_gsl_vector_uchar_h.gsl_vector_uchar;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_uchar_const_view  -- /usr/include/gsl/gsl_matrix_uchar.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_const_view_vector";

   function gsl_matrix_uchar_const_view_vector_with_tda
     (v : access constant GSL.Low_Level.gsl_gsl_vector_uchar_h.gsl_vector_uchar;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_uchar_const_view  -- /usr/include/gsl/gsl_matrix_uchar.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_const_view_vector_with_tda";

  -- Operations  
   procedure gsl_matrix_uchar_set_zero (m : access gsl_matrix_uchar)  -- /usr/include/gsl/gsl_matrix_uchar.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_set_zero";

   procedure gsl_matrix_uchar_set_identity (m : access gsl_matrix_uchar)  -- /usr/include/gsl/gsl_matrix_uchar.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_set_identity";

   procedure gsl_matrix_uchar_set_all (m : access gsl_matrix_uchar; x : unsigned_char)  -- /usr/include/gsl/gsl_matrix_uchar.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_set_all";

   function gsl_matrix_uchar_fread (stream : access Interfaces.C_Streams.FILEs; m : access gsl_matrix_uchar) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_fread";

   function gsl_matrix_uchar_fwrite (stream : access Interfaces.C_Streams.FILEs; m : access constant gsl_matrix_uchar) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_fwrite";

   function gsl_matrix_uchar_fscanf (stream : access Interfaces.C_Streams.FILEs; m : access gsl_matrix_uchar) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_fscanf";

   function gsl_matrix_uchar_fprintf
     (stream : access Interfaces.C_Streams.FILEs;
      m : access constant gsl_matrix_uchar;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_fprintf";

   function gsl_matrix_uchar_memcpy (dest : access gsl_matrix_uchar; src : access constant gsl_matrix_uchar) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_memcpy";

   function gsl_matrix_uchar_swap (m1 : access gsl_matrix_uchar; m2 : access gsl_matrix_uchar) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_swap";

   function gsl_matrix_uchar_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix_uchar;
      src : access constant gsl_matrix_uchar) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_tricpy";

   function gsl_matrix_uchar_swap_rows
     (m : access gsl_matrix_uchar;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_swap_rows";

   function gsl_matrix_uchar_swap_columns
     (m : access gsl_matrix_uchar;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_swap_columns";

   function gsl_matrix_uchar_swap_rowcol
     (m : access gsl_matrix_uchar;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_swap_rowcol";

   function gsl_matrix_uchar_transpose (m : access gsl_matrix_uchar) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_transpose";

   function gsl_matrix_uchar_transpose_memcpy (dest : access gsl_matrix_uchar; src : access constant gsl_matrix_uchar) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_transpose_memcpy";

   function gsl_matrix_uchar_transpose_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix_uchar;
      src : access constant gsl_matrix_uchar) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_transpose_tricpy";

   function gsl_matrix_uchar_max (m : access constant gsl_matrix_uchar) return unsigned_char  -- /usr/include/gsl/gsl_matrix_uchar.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_max";

   function gsl_matrix_uchar_min (m : access constant gsl_matrix_uchar) return unsigned_char  -- /usr/include/gsl/gsl_matrix_uchar.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_min";

   procedure gsl_matrix_uchar_minmax
     (m : access constant gsl_matrix_uchar;
      min_out : access unsigned_char;
      max_out : access unsigned_char)  -- /usr/include/gsl/gsl_matrix_uchar.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_minmax";

   procedure gsl_matrix_uchar_max_index
     (m : access constant gsl_matrix_uchar;
      imax : access size_t;
      jmax : access size_t)  -- /usr/include/gsl/gsl_matrix_uchar.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_max_index";

   procedure gsl_matrix_uchar_min_index
     (m : access constant gsl_matrix_uchar;
      imin : access size_t;
      jmin : access size_t)  -- /usr/include/gsl/gsl_matrix_uchar.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_min_index";

   procedure gsl_matrix_uchar_minmax_index
     (m : access constant gsl_matrix_uchar;
      imin : access size_t;
      jmin : access size_t;
      imax : access size_t;
      jmax : access size_t)  -- /usr/include/gsl/gsl_matrix_uchar.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_minmax_index";

   function gsl_matrix_uchar_equal (a : access constant gsl_matrix_uchar; b : access constant gsl_matrix_uchar) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_equal";

   function gsl_matrix_uchar_isnull (m : access constant gsl_matrix_uchar) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_isnull";

   function gsl_matrix_uchar_ispos (m : access constant gsl_matrix_uchar) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_ispos";

   function gsl_matrix_uchar_isneg (m : access constant gsl_matrix_uchar) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_isneg";

   function gsl_matrix_uchar_isnonneg (m : access constant gsl_matrix_uchar) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_isnonneg";

   function gsl_matrix_uchar_add (a : access gsl_matrix_uchar; b : access constant gsl_matrix_uchar) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_add";

   function gsl_matrix_uchar_sub (a : access gsl_matrix_uchar; b : access constant gsl_matrix_uchar) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_sub";

   function gsl_matrix_uchar_mul_elements (a : access gsl_matrix_uchar; b : access constant gsl_matrix_uchar) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_mul_elements";

   function gsl_matrix_uchar_div_elements (a : access gsl_matrix_uchar; b : access constant gsl_matrix_uchar) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_div_elements";

   function gsl_matrix_uchar_scale (a : access gsl_matrix_uchar; x : double) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_scale";

   function gsl_matrix_uchar_add_constant (a : access gsl_matrix_uchar; x : double) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_add_constant";

   function gsl_matrix_uchar_add_diagonal (a : access gsl_matrix_uchar; x : double) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_add_diagonal";

  --********************************************************************* 
  -- The functions below are obsolete                                     
  --********************************************************************* 
   function gsl_matrix_uchar_get_row
     (v : access GSL.Low_Level.gsl_gsl_vector_uchar_h.gsl_vector_uchar;
      m : access constant gsl_matrix_uchar;
      i : size_t) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_get_row";

   function gsl_matrix_uchar_get_col
     (v : access GSL.Low_Level.gsl_gsl_vector_uchar_h.gsl_vector_uchar;
      m : access constant gsl_matrix_uchar;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_get_col";

   function gsl_matrix_uchar_set_row
     (m : access gsl_matrix_uchar;
      i : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_uchar_h.gsl_vector_uchar) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_set_row";

   function gsl_matrix_uchar_set_col
     (m : access gsl_matrix_uchar;
      j : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_uchar_h.gsl_vector_uchar) return int  -- /usr/include/gsl/gsl_matrix_uchar.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_set_col";

  --********************************************************************* 
  -- inline functions if you are using GCC  
   function gsl_matrix_uchar_get
     (m : access constant gsl_matrix_uchar;
      i : size_t;
      j : size_t) return unsigned_char  -- /usr/include/gsl/gsl_matrix_uchar.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_get";

   procedure gsl_matrix_uchar_set
     (m : access gsl_matrix_uchar;
      i : size_t;
      j : size_t;
      x : unsigned_char)  -- /usr/include/gsl/gsl_matrix_uchar.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_set";

   function gsl_matrix_uchar_ptr
     (arg1 : access gsl_matrix_uchar;
      arg2 : size_t;
      arg3 : size_t) return access unsigned_char  -- /usr/include/gsl/gsl_matrix_uchar.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_ptr";

   function gsl_matrix_uchar_const_ptr
     (arg1 : access constant gsl_matrix_uchar;
      arg2 : size_t;
      arg3 : size_t) return access unsigned_char  -- /usr/include/gsl/gsl_matrix_uchar.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_uchar_const_ptr";

end GSL.Low_Level.gsl_gsl_matrix_uchar_h;
