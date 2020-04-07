pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_block_complex_double_h;
with GSL.Low_Level.gsl_gsl_vector_double_h;
with GSL.Low_Level.gsl_gsl_complex_h;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_vector_complex_double_h is

   type gsl_vector_complex is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_vector_complex_double.h:46
      stride : aliased size_t;  -- /usr/include/gsl/gsl_vector_complex_double.h:47
      data : access double;  -- /usr/include/gsl/gsl_vector_complex_double.h:48
      block : access GSL.Low_Level.gsl_gsl_block_complex_double_h.gsl_block_complex;  -- /usr/include/gsl/gsl_vector_complex_double.h:49
      owner : aliased int;  -- /usr/include/gsl/gsl_vector_complex_double.h:50
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_complex_double.h:51

   type u_gsl_vector_complex_view is record
      vector : aliased gsl_vector_complex;  -- /usr/include/gsl/gsl_vector_complex_double.h:55
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_complex_double.h:56

   subtype gsl_vector_complex_view is u_gsl_vector_complex_view;  -- /usr/include/gsl/gsl_vector_complex_double.h:58

   type u_gsl_vector_complex_const_view is record
      vector : aliased gsl_vector_complex;  -- /usr/include/gsl/gsl_vector_complex_double.h:62
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_complex_double.h:63

   subtype gsl_vector_complex_const_view is u_gsl_vector_complex_const_view;  -- /usr/include/gsl/gsl_vector_complex_double.h:65

   function gsl_vector_complex_alloc (arg1 : size_t) return access gsl_vector_complex  -- /usr/include/gsl/gsl_vector_complex_double.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_alloc";

   function gsl_vector_complex_calloc (arg1 : size_t) return access gsl_vector_complex  -- /usr/include/gsl/gsl_vector_complex_double.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_calloc";

   function gsl_vector_complex_alloc_from_block
     (arg1 : access GSL.Low_Level.gsl_gsl_block_complex_double_h.gsl_block_complex;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t) return access gsl_vector_complex  -- /usr/include/gsl/gsl_vector_complex_double.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_alloc_from_block";

   function gsl_vector_complex_alloc_from_vector
     (arg1 : access gsl_vector_complex;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t) return access gsl_vector_complex  -- /usr/include/gsl/gsl_vector_complex_double.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_alloc_from_vector";

   procedure gsl_vector_complex_free (v : access gsl_vector_complex)  -- /usr/include/gsl/gsl_vector_complex_double.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_free";

   function gsl_vector_complex_view_array (base : access double; n : size_t) return u_gsl_vector_complex_view  -- /usr/include/gsl/gsl_vector_complex_double.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_view_array";

   function gsl_vector_complex_view_array_with_stride
     (base : access double;
      stride : size_t;
      n : size_t) return u_gsl_vector_complex_view  -- /usr/include/gsl/gsl_vector_complex_double.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_view_array_with_stride";

   function gsl_vector_complex_const_view_array (base : access double; n : size_t) return u_gsl_vector_complex_const_view  -- /usr/include/gsl/gsl_vector_complex_double.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_const_view_array";

   function gsl_vector_complex_const_view_array_with_stride
     (base : access double;
      stride : size_t;
      n : size_t) return u_gsl_vector_complex_const_view  -- /usr/include/gsl/gsl_vector_complex_double.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_const_view_array_with_stride";

   function gsl_vector_complex_subvector
     (base : access gsl_vector_complex;
      i : size_t;
      n : size_t) return u_gsl_vector_complex_view  -- /usr/include/gsl/gsl_vector_complex_double.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_subvector";

   function gsl_vector_complex_subvector_with_stride
     (v : access gsl_vector_complex;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_complex_view  -- /usr/include/gsl/gsl_vector_complex_double.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_subvector_with_stride";

   function gsl_vector_complex_const_subvector
     (base : access constant gsl_vector_complex;
      i : size_t;
      n : size_t) return u_gsl_vector_complex_const_view  -- /usr/include/gsl/gsl_vector_complex_double.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_const_subvector";

   function gsl_vector_complex_const_subvector_with_stride
     (v : access constant gsl_vector_complex;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_complex_const_view  -- /usr/include/gsl/gsl_vector_complex_double.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_const_subvector_with_stride";

   function gsl_vector_complex_real (v : access gsl_vector_complex) return GSL.Low_Level.gsl_gsl_vector_double_h.u_gsl_vector_view  -- /usr/include/gsl/gsl_vector_complex_double.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_real";

   function gsl_vector_complex_imag (v : access gsl_vector_complex) return GSL.Low_Level.gsl_gsl_vector_double_h.u_gsl_vector_view  -- /usr/include/gsl/gsl_vector_complex_double.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_imag";

   function gsl_vector_complex_const_real (v : access constant gsl_vector_complex) return GSL.Low_Level.gsl_gsl_vector_double_h.u_gsl_vector_const_view  -- /usr/include/gsl/gsl_vector_complex_double.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_const_real";

   function gsl_vector_complex_const_imag (v : access constant gsl_vector_complex) return GSL.Low_Level.gsl_gsl_vector_double_h.u_gsl_vector_const_view  -- /usr/include/gsl/gsl_vector_complex_double.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_const_imag";

   procedure gsl_vector_complex_set_zero (v : access gsl_vector_complex)  -- /usr/include/gsl/gsl_vector_complex_double.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_set_zero";

   procedure gsl_vector_complex_set_all (v : access gsl_vector_complex; z : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex)  -- /usr/include/gsl/gsl_vector_complex_double.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_set_all";

   function gsl_vector_complex_set_basis (v : access gsl_vector_complex; i : size_t) return int  -- /usr/include/gsl/gsl_vector_complex_double.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_set_basis";

   function gsl_vector_complex_fread (stream : access Interfaces.C_Streams.FILEs; v : access gsl_vector_complex) return int  -- /usr/include/gsl/gsl_vector_complex_double.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_fread";

   function gsl_vector_complex_fwrite (stream : access Interfaces.C_Streams.FILEs; v : access constant gsl_vector_complex) return int  -- /usr/include/gsl/gsl_vector_complex_double.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_fwrite";

   function gsl_vector_complex_fscanf (stream : access Interfaces.C_Streams.FILEs; v : access gsl_vector_complex) return int  -- /usr/include/gsl/gsl_vector_complex_double.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_fscanf";

   function gsl_vector_complex_fprintf
     (stream : access Interfaces.C_Streams.FILEs;
      v : access constant gsl_vector_complex;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_vector_complex_double.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_fprintf";

   function gsl_vector_complex_memcpy (dest : access gsl_vector_complex; src : access constant gsl_vector_complex) return int  -- /usr/include/gsl/gsl_vector_complex_double.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_memcpy";

   function gsl_vector_complex_reverse (v : access gsl_vector_complex) return int  -- /usr/include/gsl/gsl_vector_complex_double.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_reverse";

   function gsl_vector_complex_swap (v : access gsl_vector_complex; w : access gsl_vector_complex) return int  -- /usr/include/gsl/gsl_vector_complex_double.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_swap";

   function gsl_vector_complex_swap_elements
     (v : access gsl_vector_complex;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_vector_complex_double.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_swap_elements";

   function gsl_vector_complex_equal (u : access constant gsl_vector_complex; v : access constant gsl_vector_complex) return int  -- /usr/include/gsl/gsl_vector_complex_double.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_equal";

   function gsl_vector_complex_isnull (v : access constant gsl_vector_complex) return int  -- /usr/include/gsl/gsl_vector_complex_double.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_isnull";

   function gsl_vector_complex_ispos (v : access constant gsl_vector_complex) return int  -- /usr/include/gsl/gsl_vector_complex_double.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_ispos";

   function gsl_vector_complex_isneg (v : access constant gsl_vector_complex) return int  -- /usr/include/gsl/gsl_vector_complex_double.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_isneg";

   function gsl_vector_complex_isnonneg (v : access constant gsl_vector_complex) return int  -- /usr/include/gsl/gsl_vector_complex_double.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_isnonneg";

   function gsl_vector_complex_add (a : access gsl_vector_complex; b : access constant gsl_vector_complex) return int  -- /usr/include/gsl/gsl_vector_complex_double.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_add";

   function gsl_vector_complex_sub (a : access gsl_vector_complex; b : access constant gsl_vector_complex) return int  -- /usr/include/gsl/gsl_vector_complex_double.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_sub";

   function gsl_vector_complex_mul (a : access gsl_vector_complex; b : access constant gsl_vector_complex) return int  -- /usr/include/gsl/gsl_vector_complex_double.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_mul";

   function gsl_vector_complex_div (a : access gsl_vector_complex; b : access constant gsl_vector_complex) return int  -- /usr/include/gsl/gsl_vector_complex_double.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_div";

   function gsl_vector_complex_scale (a : access gsl_vector_complex; x : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return int  -- /usr/include/gsl/gsl_vector_complex_double.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_scale";

   function gsl_vector_complex_add_constant (a : access gsl_vector_complex; x : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex) return int  -- /usr/include/gsl/gsl_vector_complex_double.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_add_constant";

   function gsl_vector_complex_get (v : access constant gsl_vector_complex; i : size_t) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_vector_complex_double.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_get";

   procedure gsl_vector_complex_set
     (v : access gsl_vector_complex;
      i : size_t;
      z : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex)  -- /usr/include/gsl/gsl_vector_complex_double.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_set";

   function gsl_vector_complex_ptr (arg1 : access gsl_vector_complex; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_vector_complex_double.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_ptr";

   function gsl_vector_complex_const_ptr (arg1 : access constant gsl_vector_complex; arg2 : size_t) return access constant GSL.Low_Level.gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_vector_complex_double.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_const_ptr";

end GSL.Low_Level.gsl_gsl_vector_complex_double_h;
