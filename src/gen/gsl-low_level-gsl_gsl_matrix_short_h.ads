pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_block_short_h;
with GSL.Low_Level.gsl_gsl_vector_short_h;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_matrix_short_h is

   type gsl_matrix_short is record
      size1 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_short.h:44
      size2 : aliased size_t;  -- /usr/include/gsl/gsl_matrix_short.h:45
      tda : aliased size_t;  -- /usr/include/gsl/gsl_matrix_short.h:46
      data : access short;  -- /usr/include/gsl/gsl_matrix_short.h:47
      block : access GSL.Low_Level.gsl_gsl_block_short_h.gsl_block_short;  -- /usr/include/gsl/gsl_matrix_short.h:48
      owner : aliased int;  -- /usr/include/gsl/gsl_matrix_short.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_short.h:50

   type u_gsl_matrix_short_view is record
      matrix : aliased gsl_matrix_short;  -- /usr/include/gsl/gsl_matrix_short.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_short.h:55

   subtype gsl_matrix_short_view is u_gsl_matrix_short_view;  -- /usr/include/gsl/gsl_matrix_short.h:57

   type u_gsl_matrix_short_const_view is record
      matrix : aliased gsl_matrix_short;  -- /usr/include/gsl/gsl_matrix_short.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_short.h:62

   subtype gsl_matrix_short_const_view is u_gsl_matrix_short_const_view;  -- /usr/include/gsl/gsl_matrix_short.h:64

   function gsl_matrix_short_alloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix_short  -- /usr/include/gsl/gsl_matrix_short.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_alloc";

   function gsl_matrix_short_calloc (arg1 : size_t; arg2 : size_t) return access gsl_matrix_short  -- /usr/include/gsl/gsl_matrix_short.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_calloc";

   function gsl_matrix_short_alloc_from_block
     (arg1 : access GSL.Low_Level.gsl_gsl_block_short_h.gsl_block_short;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix_short  -- /usr/include/gsl/gsl_matrix_short.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_alloc_from_block";

   function gsl_matrix_short_alloc_from_matrix
     (arg1 : access gsl_matrix_short;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : size_t) return access gsl_matrix_short  -- /usr/include/gsl/gsl_matrix_short.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_alloc_from_matrix";

   function gsl_vector_short_alloc_row_from_matrix (arg1 : access gsl_matrix_short; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_short_h.gsl_vector_short  -- /usr/include/gsl/gsl_matrix_short.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_alloc_row_from_matrix";

   function gsl_vector_short_alloc_col_from_matrix (arg1 : access gsl_matrix_short; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_vector_short_h.gsl_vector_short  -- /usr/include/gsl/gsl_matrix_short.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_short_alloc_col_from_matrix";

   procedure gsl_matrix_short_free (m : access gsl_matrix_short)  -- /usr/include/gsl/gsl_matrix_short.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_free";

   function gsl_matrix_short_submatrix
     (m : access gsl_matrix_short;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_short_view  -- /usr/include/gsl/gsl_matrix_short.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_submatrix";

   function gsl_matrix_short_row (m : access gsl_matrix_short; i : size_t) return GSL.Low_Level.gsl_gsl_vector_short_h.u_gsl_vector_short_view  -- /usr/include/gsl/gsl_matrix_short.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_row";

   function gsl_matrix_short_column (m : access gsl_matrix_short; j : size_t) return GSL.Low_Level.gsl_gsl_vector_short_h.u_gsl_vector_short_view  -- /usr/include/gsl/gsl_matrix_short.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_column";

   function gsl_matrix_short_diagonal (m : access gsl_matrix_short) return GSL.Low_Level.gsl_gsl_vector_short_h.u_gsl_vector_short_view  -- /usr/include/gsl/gsl_matrix_short.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_diagonal";

   function gsl_matrix_short_subdiagonal (m : access gsl_matrix_short; k : size_t) return GSL.Low_Level.gsl_gsl_vector_short_h.u_gsl_vector_short_view  -- /usr/include/gsl/gsl_matrix_short.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_subdiagonal";

   function gsl_matrix_short_superdiagonal (m : access gsl_matrix_short; k : size_t) return GSL.Low_Level.gsl_gsl_vector_short_h.u_gsl_vector_short_view  -- /usr/include/gsl/gsl_matrix_short.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_superdiagonal";

   function gsl_matrix_short_subrow
     (m : access gsl_matrix_short;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_short_h.u_gsl_vector_short_view  -- /usr/include/gsl/gsl_matrix_short.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_subrow";

   function gsl_matrix_short_subcolumn
     (m : access gsl_matrix_short;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_short_h.u_gsl_vector_short_view  -- /usr/include/gsl/gsl_matrix_short.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_subcolumn";

   function gsl_matrix_short_view_array
     (base : access short;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_short_view  -- /usr/include/gsl/gsl_matrix_short.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_view_array";

   function gsl_matrix_short_view_array_with_tda
     (base : access short;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_short_view  -- /usr/include/gsl/gsl_matrix_short.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_view_array_with_tda";

   function gsl_matrix_short_view_vector
     (v : access GSL.Low_Level.gsl_gsl_vector_short_h.gsl_vector_short;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_short_view  -- /usr/include/gsl/gsl_matrix_short.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_view_vector";

   function gsl_matrix_short_view_vector_with_tda
     (v : access GSL.Low_Level.gsl_gsl_vector_short_h.gsl_vector_short;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_short_view  -- /usr/include/gsl/gsl_matrix_short.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_view_vector_with_tda";

   function gsl_matrix_short_const_submatrix
     (m : access constant gsl_matrix_short;
      i : size_t;
      j : size_t;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_short_const_view  -- /usr/include/gsl/gsl_matrix_short.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_const_submatrix";

   function gsl_matrix_short_const_row (m : access constant gsl_matrix_short; i : size_t) return GSL.Low_Level.gsl_gsl_vector_short_h.u_gsl_vector_short_const_view  -- /usr/include/gsl/gsl_matrix_short.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_const_row";

   function gsl_matrix_short_const_column (m : access constant gsl_matrix_short; j : size_t) return GSL.Low_Level.gsl_gsl_vector_short_h.u_gsl_vector_short_const_view  -- /usr/include/gsl/gsl_matrix_short.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_const_column";

   function gsl_matrix_short_const_diagonal (m : access constant gsl_matrix_short) return GSL.Low_Level.gsl_gsl_vector_short_h.u_gsl_vector_short_const_view  -- /usr/include/gsl/gsl_matrix_short.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_const_diagonal";

   function gsl_matrix_short_const_subdiagonal (m : access constant gsl_matrix_short; k : size_t) return GSL.Low_Level.gsl_gsl_vector_short_h.u_gsl_vector_short_const_view  -- /usr/include/gsl/gsl_matrix_short.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_const_subdiagonal";

   function gsl_matrix_short_const_superdiagonal (m : access constant gsl_matrix_short; k : size_t) return GSL.Low_Level.gsl_gsl_vector_short_h.u_gsl_vector_short_const_view  -- /usr/include/gsl/gsl_matrix_short.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_const_superdiagonal";

   function gsl_matrix_short_const_subrow
     (m : access constant gsl_matrix_short;
      i : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_short_h.u_gsl_vector_short_const_view  -- /usr/include/gsl/gsl_matrix_short.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_const_subrow";

   function gsl_matrix_short_const_subcolumn
     (m : access constant gsl_matrix_short;
      j : size_t;
      offset : size_t;
      n : size_t) return GSL.Low_Level.gsl_gsl_vector_short_h.u_gsl_vector_short_const_view  -- /usr/include/gsl/gsl_matrix_short.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_const_subcolumn";

   function gsl_matrix_short_const_view_array
     (base : access short;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_short_const_view  -- /usr/include/gsl/gsl_matrix_short.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_const_view_array";

   function gsl_matrix_short_const_view_array_with_tda
     (base : access short;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_short_const_view  -- /usr/include/gsl/gsl_matrix_short.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_const_view_array_with_tda";

   function gsl_matrix_short_const_view_vector
     (v : access constant GSL.Low_Level.gsl_gsl_vector_short_h.gsl_vector_short;
      n1 : size_t;
      n2 : size_t) return u_gsl_matrix_short_const_view  -- /usr/include/gsl/gsl_matrix_short.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_const_view_vector";

   function gsl_matrix_short_const_view_vector_with_tda
     (v : access constant GSL.Low_Level.gsl_gsl_vector_short_h.gsl_vector_short;
      n1 : size_t;
      n2 : size_t;
      tda : size_t) return u_gsl_matrix_short_const_view  -- /usr/include/gsl/gsl_matrix_short.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_const_view_vector_with_tda";

   procedure gsl_matrix_short_set_zero (m : access gsl_matrix_short)  -- /usr/include/gsl/gsl_matrix_short.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_set_zero";

   procedure gsl_matrix_short_set_identity (m : access gsl_matrix_short)  -- /usr/include/gsl/gsl_matrix_short.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_set_identity";

   procedure gsl_matrix_short_set_all (m : access gsl_matrix_short; x : short)  -- /usr/include/gsl/gsl_matrix_short.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_set_all";

   function gsl_matrix_short_fread (stream : access Interfaces.C_Streams.FILEs; m : access gsl_matrix_short) return int  -- /usr/include/gsl/gsl_matrix_short.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_fread";

   function gsl_matrix_short_fwrite (stream : access Interfaces.C_Streams.FILEs; m : access constant gsl_matrix_short) return int  -- /usr/include/gsl/gsl_matrix_short.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_fwrite";

   function gsl_matrix_short_fscanf (stream : access Interfaces.C_Streams.FILEs; m : access gsl_matrix_short) return int  -- /usr/include/gsl/gsl_matrix_short.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_fscanf";

   function gsl_matrix_short_fprintf
     (stream : access Interfaces.C_Streams.FILEs;
      m : access constant gsl_matrix_short;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_matrix_short.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_fprintf";

   function gsl_matrix_short_memcpy (dest : access gsl_matrix_short; src : access constant gsl_matrix_short) return int  -- /usr/include/gsl/gsl_matrix_short.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_memcpy";

   function gsl_matrix_short_swap (m1 : access gsl_matrix_short; m2 : access gsl_matrix_short) return int  -- /usr/include/gsl/gsl_matrix_short.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_swap";

   function gsl_matrix_short_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix_short;
      src : access constant gsl_matrix_short) return int  -- /usr/include/gsl/gsl_matrix_short.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_tricpy";

   function gsl_matrix_short_swap_rows
     (m : access gsl_matrix_short;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_short.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_swap_rows";

   function gsl_matrix_short_swap_columns
     (m : access gsl_matrix_short;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_short.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_swap_columns";

   function gsl_matrix_short_swap_rowcol
     (m : access gsl_matrix_short;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_short.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_swap_rowcol";

   function gsl_matrix_short_transpose (m : access gsl_matrix_short) return int  -- /usr/include/gsl/gsl_matrix_short.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_transpose";

   function gsl_matrix_short_transpose_memcpy (dest : access gsl_matrix_short; src : access constant gsl_matrix_short) return int  -- /usr/include/gsl/gsl_matrix_short.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_transpose_memcpy";

   function gsl_matrix_short_transpose_tricpy
     (uplo_src : char;
      copy_diag : int;
      dest : access gsl_matrix_short;
      src : access constant gsl_matrix_short) return int  -- /usr/include/gsl/gsl_matrix_short.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_transpose_tricpy";

   function gsl_matrix_short_max (m : access constant gsl_matrix_short) return short  -- /usr/include/gsl/gsl_matrix_short.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_max";

   function gsl_matrix_short_min (m : access constant gsl_matrix_short) return short  -- /usr/include/gsl/gsl_matrix_short.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_min";

   procedure gsl_matrix_short_minmax
     (m : access constant gsl_matrix_short;
      min_out : access short;
      max_out : access short)  -- /usr/include/gsl/gsl_matrix_short.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_minmax";

   procedure gsl_matrix_short_max_index
     (m : access constant gsl_matrix_short;
      imax : access size_t;
      jmax : access size_t)  -- /usr/include/gsl/gsl_matrix_short.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_max_index";

   procedure gsl_matrix_short_min_index
     (m : access constant gsl_matrix_short;
      imin : access size_t;
      jmin : access size_t)  -- /usr/include/gsl/gsl_matrix_short.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_min_index";

   procedure gsl_matrix_short_minmax_index
     (m : access constant gsl_matrix_short;
      imin : access size_t;
      jmin : access size_t;
      imax : access size_t;
      jmax : access size_t)  -- /usr/include/gsl/gsl_matrix_short.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_minmax_index";

   function gsl_matrix_short_equal (a : access constant gsl_matrix_short; b : access constant gsl_matrix_short) return int  -- /usr/include/gsl/gsl_matrix_short.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_equal";

   function gsl_matrix_short_isnull (m : access constant gsl_matrix_short) return int  -- /usr/include/gsl/gsl_matrix_short.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_isnull";

   function gsl_matrix_short_ispos (m : access constant gsl_matrix_short) return int  -- /usr/include/gsl/gsl_matrix_short.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_ispos";

   function gsl_matrix_short_isneg (m : access constant gsl_matrix_short) return int  -- /usr/include/gsl/gsl_matrix_short.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_isneg";

   function gsl_matrix_short_isnonneg (m : access constant gsl_matrix_short) return int  -- /usr/include/gsl/gsl_matrix_short.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_isnonneg";

   function gsl_matrix_short_add (a : access gsl_matrix_short; b : access constant gsl_matrix_short) return int  -- /usr/include/gsl/gsl_matrix_short.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_add";

   function gsl_matrix_short_sub (a : access gsl_matrix_short; b : access constant gsl_matrix_short) return int  -- /usr/include/gsl/gsl_matrix_short.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_sub";

   function gsl_matrix_short_mul_elements (a : access gsl_matrix_short; b : access constant gsl_matrix_short) return int  -- /usr/include/gsl/gsl_matrix_short.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_mul_elements";

   function gsl_matrix_short_div_elements (a : access gsl_matrix_short; b : access constant gsl_matrix_short) return int  -- /usr/include/gsl/gsl_matrix_short.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_div_elements";

   function gsl_matrix_short_scale (a : access gsl_matrix_short; x : double) return int  -- /usr/include/gsl/gsl_matrix_short.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_scale";

   function gsl_matrix_short_add_constant (a : access gsl_matrix_short; x : double) return int  -- /usr/include/gsl/gsl_matrix_short.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_add_constant";

   function gsl_matrix_short_add_diagonal (a : access gsl_matrix_short; x : double) return int  -- /usr/include/gsl/gsl_matrix_short.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_add_diagonal";

   function gsl_matrix_short_get_row
     (v : access GSL.Low_Level.gsl_gsl_vector_short_h.gsl_vector_short;
      m : access constant gsl_matrix_short;
      i : size_t) return int  -- /usr/include/gsl/gsl_matrix_short.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_get_row";

   function gsl_matrix_short_get_col
     (v : access GSL.Low_Level.gsl_gsl_vector_short_h.gsl_vector_short;
      m : access constant gsl_matrix_short;
      j : size_t) return int  -- /usr/include/gsl/gsl_matrix_short.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_get_col";

   function gsl_matrix_short_set_row
     (m : access gsl_matrix_short;
      i : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_short_h.gsl_vector_short) return int  -- /usr/include/gsl/gsl_matrix_short.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_set_row";

   function gsl_matrix_short_set_col
     (m : access gsl_matrix_short;
      j : size_t;
      v : access constant GSL.Low_Level.gsl_gsl_vector_short_h.gsl_vector_short) return int  -- /usr/include/gsl/gsl_matrix_short.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_set_col";

   function gsl_matrix_short_get
     (m : access constant gsl_matrix_short;
      i : size_t;
      j : size_t) return short  -- /usr/include/gsl/gsl_matrix_short.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_get";

   procedure gsl_matrix_short_set
     (m : access gsl_matrix_short;
      i : size_t;
      j : size_t;
      x : short)  -- /usr/include/gsl/gsl_matrix_short.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_set";

   function gsl_matrix_short_ptr
     (arg1 : access gsl_matrix_short;
      arg2 : size_t;
      arg3 : size_t) return access short  -- /usr/include/gsl/gsl_matrix_short.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_ptr";

   function gsl_matrix_short_const_ptr
     (arg1 : access constant gsl_matrix_short;
      arg2 : size_t;
      arg3 : size_t) return access short  -- /usr/include/gsl/gsl_matrix_short.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_short_const_ptr";

end GSL.Low_Level.gsl_gsl_matrix_short_h;
