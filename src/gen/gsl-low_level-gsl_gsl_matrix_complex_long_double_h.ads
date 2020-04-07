pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_block_complex_long_double_h;
with GSL.Low_Level.gsl_gsl_vector_complex_long_double_h;
with GSL.Low_Level.gsl_gsl_complex_h;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_matrix_complex_long_double_h is

   type gsl_matrix_complex_long_double is record
      size1 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:44
      size2 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:45
      tda : aliased size_t;  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:46
      data : access long_double;  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:47
      block : access GSL.Low_Level.gsl_gsl_block_complex_long_double_h.gsl_block_complex_long_double;  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:48
      owner : aliased int;  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:50

   type u_gsl_matrix_complex_long_double_view is record
      matrix : aliased gsl_matrix_complex_long_double;  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:55

   subtype gsl_matrix_complex_long_double_view is u_gsl_matrix_complex_long_double_view;  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:57

   type u_gsl_matrix_complex_long_double_const_view is record
      matrix : aliased gsl_matrix_complex_long_double;  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:62

   subtype gsl_matrix_complex_long_double_const_view is u_gsl_matrix_complex_long_double_const_view;  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:64

   function gsl_matrix_complex_long_double_alloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix_complex_long_double  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_alloc";

   function gsl_matrix_complex_long_double_calloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix_complex_long_double  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_calloc";

   function gsl_matrix_complex_long_double_alloc_from_block
     (arg1 : access GSL.Low_Level.gsl_gsl_block_complex_long_double_h.gsl_block_complex_long_double;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix_complex_long_double  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_alloc_from_block";

   function gsl_matrix_complex_long_double_alloc_from_matrix
     (arg1 : access gsl_matrix_complex_long_double;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix_complex_long_double  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_alloc_from_matrix";

   function gsl_vector_complex_long_double_alloc_row_from_matrix (arg1 : access gsl_matrix_complex_long_double; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.gsl_vector_complex_long_double  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_alloc_row_from_matrix";

   function gsl_vector_complex_long_double_alloc_col_from_matrix (arg1 : access gsl_matrix_complex_long_double; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.gsl_vector_complex_long_double  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_alloc_col_from_matrix";

   procedure gsl_matrix_complex_long_double_free (m : access gsl_matrix_complex_long_double)  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_free";

   function gsl_matrix_complex_long_double_submatrix
     (m : access gsl_matrix_complex_long_double;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_complex_long_double_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_submatrix";

   function gsl_matrix_complex_long_double_row (m : access gsl_matrix_complex_long_double; i : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.u_gsl_vector_complex_long_double_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_row";

   function gsl_matrix_complex_long_double_column (m : access gsl_matrix_complex_long_double; j : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.u_gsl_vector_complex_long_double_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_column";

   function gsl_matrix_complex_long_double_diagonal (m : access gsl_matrix_complex_long_double) return GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.u_gsl_vector_complex_long_double_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_diagonal";

   function gsl_matrix_complex_long_double_subdiagonal (m : access gsl_matrix_complex_long_double; k : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.u_gsl_vector_complex_long_double_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_subdiagonal";

   function gsl_matrix_complex_long_double_superdiagonal (m : access gsl_matrix_complex_long_double; k : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.u_gsl_vector_complex_long_double_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_superdiagonal";

   function gsl_matrix_complex_long_double_subrow
     (m : access gsl_matrix_complex_long_double;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.u_gsl_vector_complex_long_double_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_subrow";

   function gsl_matrix_complex_long_double_subcolumn
     (m : access gsl_matrix_complex_long_double;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.u_gsl_vector_complex_long_double_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_subcolumn";

   function gsl_matrix_complex_long_double_view_array
     (base : access long_double;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_complex_long_double_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_view_array";

   function gsl_matrix_complex_long_double_view_array_with_tda
     (base : access long_double;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_complex_long_double_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_view_array_with_tda";

   function gsl_matrix_complex_long_double_view_vector
     (v : access GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.gsl_vector_complex_long_double;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_complex_long_double_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_view_vector";

   function gsl_matrix_complex_long_double_view_vector_with_tda
     (v : access GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.gsl_vector_complex_long_double;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_complex_long_double_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_view_vector_with_tda";

   function gsl_matrix_complex_long_double_const_submatrix
     (m : access constant gsl_matrix_complex_long_double;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_complex_long_double_const_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_const_submatrix";

   function gsl_matrix_complex_long_double_const_row (m : access constant gsl_matrix_complex_long_double; i : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.u_gsl_vector_complex_long_double_const_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_const_row";

   function gsl_matrix_complex_long_double_const_column (m : access constant gsl_matrix_complex_long_double; j : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.u_gsl_vector_complex_long_double_const_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_const_column";

   function gsl_matrix_complex_long_double_const_diagonal (m : access constant gsl_matrix_complex_long_double) return GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.u_gsl_vector_complex_long_double_const_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_const_diagonal";

   function gsl_matrix_complex_long_double_const_subdiagonal (m : access constant gsl_matrix_complex_long_double; k : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.u_gsl_vector_complex_long_double_const_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_const_subdiagonal";

   function gsl_matrix_complex_long_double_const_superdiagonal (m : access constant gsl_matrix_complex_long_double; k : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.u_gsl_vector_complex_long_double_const_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_const_superdiagonal";

   function gsl_matrix_complex_long_double_const_subrow
     (m : access constant gsl_matrix_complex_long_double;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.u_gsl_vector_complex_long_double_const_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_const_subrow";

   function gsl_matrix_complex_long_double_const_subcolumn
     (m : access constant gsl_matrix_complex_long_double;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.u_gsl_vector_complex_long_double_const_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_const_subcolumn";

   function gsl_matrix_complex_long_double_const_view_array
     (base : access long_double;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_complex_long_double_const_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_const_view_array";

   function gsl_matrix_complex_long_double_const_view_array_with_tda
     (base : access long_double;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_complex_long_double_const_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_const_view_array_with_tda";

   function gsl_matrix_complex_long_double_const_view_vector
     (v : access constant GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.gsl_vector_complex_long_double;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_complex_long_double_const_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_const_view_vector";

   function gsl_matrix_complex_long_double_const_view_vector_with_tda
     (v : access constant GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.gsl_vector_complex_long_double;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_complex_long_double_const_view  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_const_view_vector_with_tda";

   procedure gsl_matrix_complex_long_double_set_zero (m : access gsl_matrix_complex_long_double)  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_set_zero";

   procedure gsl_matrix_complex_long_double_set_identity (m : access gsl_matrix_complex_long_double)  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_set_identity";

   procedure gsl_matrix_complex_long_double_set_all (m : access gsl_matrix_complex_long_double; x : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_long_double)  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_set_all";

   function gsl_matrix_complex_long_double_fread (stream : access Interfaces.C_Streams.FILEs; m : access gsl_matrix_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_fread";

   function gsl_matrix_complex_long_double_fwrite (stream : access Interfaces.C_Streams.FILEs; m : access constant gsl_matrix_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_fwrite";

   function gsl_matrix_complex_long_double_fscanf (stream : access Interfaces.C_Streams.FILEs; m : access gsl_matrix_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_fscanf";

   function gsl_matrix_complex_long_double_fprintf
     (stream : access Interfaces.C_Streams.FILEs;
      m : access constant gsl_matrix_complex_long_double;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_fprintf";

   function gsl_matrix_complex_long_double_memcpy (dest : access gsl_matrix_complex_long_double; src : access constant gsl_matrix_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_memcpy";

   function gsl_matrix_complex_long_double_swap (m1 : access gsl_matrix_complex_long_double; m2 : access gsl_matrix_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_swap";

   function gsl_matrix_complex_long_double_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix_complex_long_double;
      src : access constant gsl_matrix_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_tricpy";

   function gsl_matrix_complex_long_double_swap_rows
     (m : access gsl_matrix_complex_long_double;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_swap_rows";

   function gsl_matrix_complex_long_double_swap_columns
     (m : access gsl_matrix_complex_long_double;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_swap_columns";

   function gsl_matrix_complex_long_double_swap_rowcol
     (m : access gsl_matrix_complex_long_double;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_swap_rowcol";

   function gsl_matrix_complex_long_double_transpose (m : access gsl_matrix_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_transpose";

   function gsl_matrix_complex_long_double_transpose_memcpy (dest : access gsl_matrix_complex_long_double; src : access constant gsl_matrix_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_transpose_memcpy";

   function gsl_matrix_complex_long_double_transpose_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix_complex_long_double;
      src : access constant gsl_matrix_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:227
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_transpose_tricpy";

   function gsl_matrix_complex_long_double_equal (a : access constant gsl_matrix_complex_long_double; b : access constant gsl_matrix_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_equal";

   function gsl_matrix_complex_long_double_isnull (m : access constant gsl_matrix_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_isnull";

   function gsl_matrix_complex_long_double_ispos (m : access constant gsl_matrix_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_ispos";

   function gsl_matrix_complex_long_double_isneg (m : access constant gsl_matrix_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_isneg";

   function gsl_matrix_complex_long_double_isnonneg (m : access constant gsl_matrix_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_isnonneg";

   function gsl_matrix_complex_long_double_add (a : access gsl_matrix_complex_long_double; b : access constant gsl_matrix_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_add";

   function gsl_matrix_complex_long_double_sub (a : access gsl_matrix_complex_long_double; b : access constant gsl_matrix_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:237
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_sub";

   function gsl_matrix_complex_long_double_mul_elements (a : access gsl_matrix_complex_long_double; b : access constant gsl_matrix_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_mul_elements";

   function gsl_matrix_complex_long_double_div_elements (a : access gsl_matrix_complex_long_double; b : access constant gsl_matrix_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_div_elements";

   function gsl_matrix_complex_long_double_scale (a : access gsl_matrix_complex_long_double; x : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_scale";

   function gsl_matrix_complex_long_double_add_constant (a : access gsl_matrix_complex_long_double; x : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_add_constant";

   function gsl_matrix_complex_long_double_add_diagonal (a : access gsl_matrix_complex_long_double; x : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:242
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_add_diagonal";

   function gsl_matrix_complex_long_double_get_row
     (v : access GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.gsl_vector_complex_long_double;
      m : access constant gsl_matrix_complex_long_double;
      i : size_t) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_get_row";

   function gsl_matrix_complex_long_double_get_col
     (v : access GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.gsl_vector_complex_long_double;
      m : access constant gsl_matrix_complex_long_double;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_get_col";

   function gsl_matrix_complex_long_double_set_row
     (m : access gsl_matrix_complex_long_double;
      i : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.gsl_vector_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_set_row";

   function gsl_matrix_complex_long_double_set_col
     (m : access gsl_matrix_complex_long_double;
      j : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_complex_long_double_h.gsl_vector_complex_long_double) return int  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_set_col";

   function gsl_matrix_complex_long_double_get
     (m : access constant gsl_matrix_complex_long_double;
      i : size_t;
      j : size_t) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_long_double  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_get";

   procedure gsl_matrix_complex_long_double_set
     (m : access gsl_matrix_complex_long_double;
      i : size_t;
      j : size_t;
      x : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_long_double)  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_set";

   function gsl_matrix_complex_long_double_ptr
     (arg1 : access gsl_matrix_complex_long_double;
      arg2 : size_t;
      arg3 : size_t) return access GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_long_double  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:258
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_ptr";

   function gsl_matrix_complex_long_double_const_ptr
     (arg1 : access constant gsl_matrix_complex_long_double;
      arg2 : size_t;
      arg3 : size_t) return access constant GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_long_double  -- /usr/include/gsl/gsl_matrix_complex_long_double.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_complex_long_double_const_ptr";

end GSL.Low_Level.gsl_gsl_matrix_complex_long_double_h;
