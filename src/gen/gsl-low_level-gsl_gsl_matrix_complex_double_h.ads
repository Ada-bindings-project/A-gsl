pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_block_complex_double_h;
with GSL.Low_Level.gsl_gsl_vector_complex_double_h;
with GSL.Low_Level.gsl_gsl_complex_h;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_matrix_complex_double_h is

  -- matrix/gsl_matrix_complex_double.h
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

   type gsl_matrix_complex is record
      size1 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_complex_double.h:44
      size2 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_complex_double.h:45
      tda : aliased size_t;  -- /usr/include/gsl/gsl_matrix_complex_double.h:46
      data : access double;  -- /usr/include/gsl/gsl_matrix_complex_double.h:47
      block : access GSL.Low_Level.gsl_gsl_block_complex_double_h.gsl_block_complex;  -- /usr/include/gsl/gsl_matrix_complex_double.h:48
      owner : aliased int;  -- /usr/include/gsl/gsl_matrix_complex_double.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_complex_double.h:50

   type u_gsl_matrix_complex_view is record
      matrix : aliased gsl_matrix_complex;  -- /usr/include/gsl/gsl_matrix_complex_double.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_complex_double.h:55

   subtype gsl_matrix_complex_view is u_gsl_matrix_complex_view;  -- /usr/include/gsl/gsl_matrix_complex_double.h:57

   type u_gsl_matrix_complex_const_view is record
      matrix : aliased gsl_matrix_complex;  -- /usr/include/gsl/gsl_matrix_complex_double.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_complex_double.h:62

   subtype gsl_matrix_complex_const_view is u_gsl_matrix_complex_const_view;  -- /usr/include/gsl/gsl_matrix_complex_double.h:64

  -- Allocation  
   function gsl_matrix_complex_alloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix_complex  -- /usr/include/gsl/gsl_matrix_complex_double.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_alloc";

   function gsl_matrix_complex_calloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix_complex  -- /usr/include/gsl/gsl_matrix_complex_double.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_calloc";

   function gsl_matrix_complex_alloc_from_block
     (arg1 : access GSL.Low_Level.gsl_gsl_block_complex_double_h.gsl_block_complex;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix_complex  -- /usr/include/gsl/gsl_matrix_complex_double.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_alloc_from_block";

   function gsl_matrix_complex_alloc_from_matrix
     (arg1 : access gsl_matrix_complex;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix_complex  -- /usr/include/gsl/gsl_matrix_complex_double.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_alloc_from_matrix";

   function gsl_vector_complex_alloc_row_from_matrix (arg1 : access gsl_matrix_complex; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex  -- /usr/include/gsl/gsl_matrix_complex_double.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_alloc_row_from_matrix";

   function gsl_vector_complex_alloc_col_from_matrix (arg1 : access gsl_matrix_complex; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex  -- /usr/include/gsl/gsl_matrix_complex_double.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_alloc_col_from_matrix";

   procedure gsl_matrix_complex_free (m : access gsl_matrix_complex)  -- /usr/include/gsl/gsl_matrix_complex_double.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_free";

  -- Views  
   function gsl_matrix_complex_submatrix
     (m : access gsl_matrix_complex;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_complex_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_submatrix";

   function gsl_matrix_complex_row (m : access gsl_matrix_complex; i : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_double_h.u_gsl_vector_complex_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_row";

   function gsl_matrix_complex_column (m : access gsl_matrix_complex; j : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_double_h.u_gsl_vector_complex_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_column";

   function gsl_matrix_complex_diagonal (m : access gsl_matrix_complex) return GSL.Low_Level.gsl_gsl_vector_complex_double_h.u_gsl_vector_complex_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_diagonal";

   function gsl_matrix_complex_subdiagonal (m : access gsl_matrix_complex; k : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_double_h.u_gsl_vector_complex_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_subdiagonal";

   function gsl_matrix_complex_superdiagonal (m : access gsl_matrix_complex; k : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_double_h.u_gsl_vector_complex_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_superdiagonal";

   function gsl_matrix_complex_subrow
     (m : access gsl_matrix_complex;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_double_h.u_gsl_vector_complex_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_subrow";

   function gsl_matrix_complex_subcolumn
     (m : access gsl_matrix_complex;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_double_h.u_gsl_vector_complex_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_subcolumn";

   function gsl_matrix_complex_view_array
     (base : access double;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_complex_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_view_array";

   function gsl_matrix_complex_view_array_with_tda
     (base : access double;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_complex_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_view_array_with_tda";

   function gsl_matrix_complex_view_vector
     (v : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_complex_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_view_vector";

   function gsl_matrix_complex_view_vector_with_tda
     (v : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_complex_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_view_vector_with_tda";

   function gsl_matrix_complex_const_submatrix
     (m : access constant gsl_matrix_complex;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_complex_const_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_const_submatrix";

   function gsl_matrix_complex_const_row (m : access constant gsl_matrix_complex; i : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_double_h.u_gsl_vector_complex_const_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_const_row";

   function gsl_matrix_complex_const_column (m : access constant gsl_matrix_complex; j : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_double_h.u_gsl_vector_complex_const_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_const_column";

   function gsl_matrix_complex_const_diagonal (m : access constant gsl_matrix_complex) return GSL.Low_Level.gsl_gsl_vector_complex_double_h.u_gsl_vector_complex_const_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_const_diagonal";

   function gsl_matrix_complex_const_subdiagonal (m : access constant gsl_matrix_complex; k : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_double_h.u_gsl_vector_complex_const_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_const_subdiagonal";

   function gsl_matrix_complex_const_superdiagonal (m : access constant gsl_matrix_complex; k : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_double_h.u_gsl_vector_complex_const_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_const_superdiagonal";

   function gsl_matrix_complex_const_subrow
     (m : access constant gsl_matrix_complex;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_double_h.u_gsl_vector_complex_const_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_const_subrow";

   function gsl_matrix_complex_const_subcolumn
     (m : access constant gsl_matrix_complex;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_double_h.u_gsl_vector_complex_const_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_const_subcolumn";

   function gsl_matrix_complex_const_view_array
     (base : access double;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_complex_const_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_const_view_array";

   function gsl_matrix_complex_const_view_array_with_tda
     (base : access double;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_complex_const_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_const_view_array_with_tda";

   function gsl_matrix_complex_const_view_vector
     (v : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_complex_const_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_const_view_vector";

   function gsl_matrix_complex_const_view_vector_with_tda
     (v : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_complex_const_view  -- /usr/include/gsl/gsl_matrix_complex_double.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_const_view_vector_with_tda";

  -- Operations  
   procedure gsl_matrix_complex_set_zero (m : access gsl_matrix_complex)  -- /usr/include/gsl/gsl_matrix_complex_double.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_set_zero";

   procedure gsl_matrix_complex_set_identity (m : access gsl_matrix_complex)  -- /usr/include/gsl/gsl_matrix_complex_double.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_set_identity";

   procedure gsl_matrix_complex_set_all (m : access gsl_matrix_complex; x : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex)  -- /usr/include/gsl/gsl_matrix_complex_double.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_set_all";

   function gsl_matrix_complex_fread (stream : Interfaces.C_Streams.FILEs; m : access gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_fread";

   function gsl_matrix_complex_fwrite (stream : Interfaces.C_Streams.FILEs; m : access constant gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_fwrite";

   function gsl_matrix_complex_fscanf (stream : Interfaces.C_Streams.FILEs; m : access gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_fscanf";

   function gsl_matrix_complex_fprintf
     (stream : Interfaces.C_Streams.FILEs;
      m : access constant gsl_matrix_complex;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_fprintf";

   function gsl_matrix_complex_memcpy (dest : access gsl_matrix_complex; src : access constant gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_memcpy";

   function gsl_matrix_complex_swap (m1 : access gsl_matrix_complex; m2 : access gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_swap";

   function gsl_matrix_complex_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix_complex;
      src : access constant gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_tricpy";

   function gsl_matrix_complex_swap_rows
     (m : access gsl_matrix_complex;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_swap_rows";

   function gsl_matrix_complex_swap_columns
     (m : access gsl_matrix_complex;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_swap_columns";

   function gsl_matrix_complex_swap_rowcol
     (m : access gsl_matrix_complex;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_swap_rowcol";

   function gsl_matrix_complex_transpose (m : access gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_transpose";

   function gsl_matrix_complex_transpose_memcpy (dest : access gsl_matrix_complex; src : access constant gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_transpose_memcpy";

   function gsl_matrix_complex_transpose_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix_complex;
      src : access constant gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:227
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_transpose_tricpy";

   function gsl_matrix_complex_equal (a : access constant gsl_matrix_complex; b : access constant gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_equal";

   function gsl_matrix_complex_isnull (m : access constant gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_isnull";

   function gsl_matrix_complex_ispos (m : access constant gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_ispos";

   function gsl_matrix_complex_isneg (m : access constant gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_isneg";

   function gsl_matrix_complex_isnonneg (m : access constant gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_isnonneg";

   function gsl_matrix_complex_add (a : access gsl_matrix_complex; b : access constant gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_add";

   function gsl_matrix_complex_sub (a : access gsl_matrix_complex; b : access constant gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:237
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_sub";

   function gsl_matrix_complex_mul_elements (a : access gsl_matrix_complex; b : access constant gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_mul_elements";

   function gsl_matrix_complex_div_elements (a : access gsl_matrix_complex; b : access constant gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_div_elements";

   function gsl_matrix_complex_scale (a : access gsl_matrix_complex; x : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_scale";

   function gsl_matrix_complex_add_constant (a : access gsl_matrix_complex; x : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_add_constant";

   function gsl_matrix_complex_add_diagonal (a : access gsl_matrix_complex; x : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:242
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_add_diagonal";

  --********************************************************************* 
  -- The functions below are obsolete                                     
  --********************************************************************* 
   function gsl_matrix_complex_get_row
     (v : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      m : access constant gsl_matrix_complex;
      i : size_t) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_get_row";

   function gsl_matrix_complex_get_col
     (v : access GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      m : access constant gsl_matrix_complex;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_get_col";

   function gsl_matrix_complex_set_row
     (m : access gsl_matrix_complex;
      i : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_set_row";

   function gsl_matrix_complex_set_col
     (m : access gsl_matrix_complex;
      j : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_matrix_complex_double.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_set_col";

  --********************************************************************* 
  -- inline functions if you are using GCC  
   function gsl_matrix_complex_get
     (m : access constant gsl_matrix_complex;
      i : size_t;
      j : size_t) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_matrix_complex_double.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_get";

   procedure gsl_matrix_complex_set
     (m : access gsl_matrix_complex;
      i : size_t;
      j : size_t;
      x : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex)  -- /usr/include/gsl/gsl_matrix_complex_double.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_set";

   function gsl_matrix_complex_ptr
     (arg1 : access gsl_matrix_complex;
      arg2 : size_t;
      arg3 : size_t) return access GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_matrix_complex_double.h:258
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_ptr";

   function gsl_matrix_complex_const_ptr
     (arg1 : access constant gsl_matrix_complex;
      arg2 : size_t;
      arg3 : size_t) return access constant GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_matrix_complex_double.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_const_ptr";

end GSL.Low_Level.gsl_gsl_matrix_complex_double_h;
