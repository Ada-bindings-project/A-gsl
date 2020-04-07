pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_block_complex_float_h;
with GSL.Low_Level.gsl_gsl_vector_float_h;
with GSL.Low_Level.gsl_gsl_complex_h;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_vector_complex_float_h is

   type gsl_vector_complex_float is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_vector_complex_float.h:46
      stride : aliased size_t;  -- /usr/include/gsl/gsl_vector_complex_float.h:47
      data : access float;  -- /usr/include/gsl/gsl_vector_complex_float.h:48
      block : access GSL.Low_Level.gsl_gsl_block_complex_float_h.gsl_block_complex_float;  -- /usr/include/gsl/gsl_vector_complex_float.h:49
      owner : aliased int;  -- /usr/include/gsl/gsl_vector_complex_float.h:50
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_complex_float.h:51

   type u_gsl_vector_complex_float_view is record
      vector : aliased gsl_vector_complex_float;  -- /usr/include/gsl/gsl_vector_complex_float.h:55
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_complex_float.h:56

   subtype gsl_vector_complex_float_view is u_gsl_vector_complex_float_view;  -- /usr/include/gsl/gsl_vector_complex_float.h:58

   type u_gsl_vector_complex_float_const_view is record
      vector : aliased gsl_vector_complex_float;  -- /usr/include/gsl/gsl_vector_complex_float.h:62
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_complex_float.h:63

   subtype gsl_vector_complex_float_const_view is u_gsl_vector_complex_float_const_view;  -- /usr/include/gsl/gsl_vector_complex_float.h:65

   function gsl_vector_complex_float_alloc (arg1 : size_t) return access gsl_vector_complex_float  -- /usr/include/gsl/gsl_vector_complex_float.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_alloc";

   function gsl_vector_complex_float_calloc (arg1 : size_t) return access gsl_vector_complex_float  -- /usr/include/gsl/gsl_vector_complex_float.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_calloc";

   function gsl_vector_complex_float_alloc_from_block
     (arg1 : access GSL.Low_Level.gsl_gsl_block_complex_float_h.gsl_block_complex_float;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t) return access gsl_vector_complex_float  -- /usr/include/gsl/gsl_vector_complex_float.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_alloc_from_block";

   function gsl_vector_complex_float_alloc_from_vector
     (arg1 : access gsl_vector_complex_float;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t) return access gsl_vector_complex_float  -- /usr/include/gsl/gsl_vector_complex_float.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_alloc_from_vector";

   procedure gsl_vector_complex_float_free (v : access gsl_vector_complex_float)  -- /usr/include/gsl/gsl_vector_complex_float.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_free";

   function gsl_vector_complex_float_view_array (base : access float; n : size_t) return u_gsl_vector_complex_float_view  -- /usr/include/gsl/gsl_vector_complex_float.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_view_array";

   function gsl_vector_complex_float_view_array_with_stride
     (base : access float;
      stride : size_t;
      n : size_t) return u_gsl_vector_complex_float_view  -- /usr/include/gsl/gsl_vector_complex_float.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_view_array_with_stride";

   function gsl_vector_complex_float_const_view_array (base : access float; n : size_t) return u_gsl_vector_complex_float_const_view  -- /usr/include/gsl/gsl_vector_complex_float.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_const_view_array";

   function gsl_vector_complex_float_const_view_array_with_stride
     (base : access float;
      stride : size_t;
      n : size_t) return u_gsl_vector_complex_float_const_view  -- /usr/include/gsl/gsl_vector_complex_float.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_const_view_array_with_stride";

   function gsl_vector_complex_float_subvector
     (base : access gsl_vector_complex_float;
      i : size_t;
      n : size_t) return u_gsl_vector_complex_float_view  -- /usr/include/gsl/gsl_vector_complex_float.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_subvector";

   function gsl_vector_complex_float_subvector_with_stride
     (v : access gsl_vector_complex_float;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_complex_float_view  -- /usr/include/gsl/gsl_vector_complex_float.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_subvector_with_stride";

   function gsl_vector_complex_float_const_subvector
     (base : access constant gsl_vector_complex_float;
      i : size_t;
      n : size_t) return u_gsl_vector_complex_float_const_view  -- /usr/include/gsl/gsl_vector_complex_float.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_const_subvector";

   function gsl_vector_complex_float_const_subvector_with_stride
     (v : access constant gsl_vector_complex_float;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_complex_float_const_view  -- /usr/include/gsl/gsl_vector_complex_float.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_const_subvector_with_stride";

   function gsl_vector_complex_float_real (v : access gsl_vector_complex_float) return GSL.Low_Level.gsl_gsl_vector_float_h.u_gsl_vector_float_view  -- /usr/include/gsl/gsl_vector_complex_float.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_real";

   function gsl_vector_complex_float_imag (v : access gsl_vector_complex_float) return GSL.Low_Level.gsl_gsl_vector_float_h.u_gsl_vector_float_view  -- /usr/include/gsl/gsl_vector_complex_float.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_imag";

   function gsl_vector_complex_float_const_real (v : access constant gsl_vector_complex_float) return GSL.Low_Level.gsl_gsl_vector_float_h.u_gsl_vector_float_const_view  -- /usr/include/gsl/gsl_vector_complex_float.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_const_real";

   function gsl_vector_complex_float_const_imag (v : access constant gsl_vector_complex_float) return GSL.Low_Level.gsl_gsl_vector_float_h.u_gsl_vector_float_const_view  -- /usr/include/gsl/gsl_vector_complex_float.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_const_imag";

   procedure gsl_vector_complex_float_set_zero (v : access gsl_vector_complex_float)  -- /usr/include/gsl/gsl_vector_complex_float.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_set_zero";

   procedure gsl_vector_complex_float_set_all (v : access gsl_vector_complex_float; z : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float)  -- /usr/include/gsl/gsl_vector_complex_float.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_set_all";

   function gsl_vector_complex_float_set_basis (v : access gsl_vector_complex_float; i : size_t) return int  -- /usr/include/gsl/gsl_vector_complex_float.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_set_basis";

   function gsl_vector_complex_float_fread (stream : access Interfaces.C_Streams.FILEs; v : access gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_vector_complex_float.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_fread";

   function gsl_vector_complex_float_fwrite (stream : access Interfaces.C_Streams.FILEs; v : access constant gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_vector_complex_float.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_fwrite";

   function gsl_vector_complex_float_fscanf (stream : access Interfaces.C_Streams.FILEs; v : access gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_vector_complex_float.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_fscanf";

   function gsl_vector_complex_float_fprintf
     (stream : access Interfaces.C_Streams.FILEs;
      v : access constant gsl_vector_complex_float;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_vector_complex_float.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_fprintf";

   function gsl_vector_complex_float_memcpy (dest : access gsl_vector_complex_float; src : access constant gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_vector_complex_float.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_memcpy";

   function gsl_vector_complex_float_reverse (v : access gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_vector_complex_float.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_reverse";

   function gsl_vector_complex_float_swap (v : access gsl_vector_complex_float; w : access gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_vector_complex_float.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_swap";

   function gsl_vector_complex_float_swap_elements
     (v : access gsl_vector_complex_float;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_vector_complex_float.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_swap_elements";

   function gsl_vector_complex_float_equal (u : access constant gsl_vector_complex_float; v : access constant gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_vector_complex_float.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_equal";

   function gsl_vector_complex_float_isnull (v : access constant gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_vector_complex_float.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_isnull";

   function gsl_vector_complex_float_ispos (v : access constant gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_vector_complex_float.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_ispos";

   function gsl_vector_complex_float_isneg (v : access constant gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_vector_complex_float.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_isneg";

   function gsl_vector_complex_float_isnonneg (v : access constant gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_vector_complex_float.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_isnonneg";

   function gsl_vector_complex_float_add (a : access gsl_vector_complex_float; b : access constant gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_vector_complex_float.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_add";

   function gsl_vector_complex_float_sub (a : access gsl_vector_complex_float; b : access constant gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_vector_complex_float.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_sub";

   function gsl_vector_complex_float_mul (a : access gsl_vector_complex_float; b : access constant gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_vector_complex_float.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_mul";

   function gsl_vector_complex_float_div (a : access gsl_vector_complex_float; b : access constant gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_vector_complex_float.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_div";

   function gsl_vector_complex_float_scale (a : access gsl_vector_complex_float; x : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float) return int  -- /usr/include/gsl/gsl_vector_complex_float.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_scale";

   function gsl_vector_complex_float_add_constant (a : access gsl_vector_complex_float; x : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float) return int  -- /usr/include/gsl/gsl_vector_complex_float.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_add_constant";

   function gsl_vector_complex_float_get (v : access constant gsl_vector_complex_float; i : size_t) return GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float  -- /usr/include/gsl/gsl_vector_complex_float.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_get";

   procedure gsl_vector_complex_float_set
     (v : access gsl_vector_complex_float;
      i : size_t;
      z : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float)  -- /usr/include/gsl/gsl_vector_complex_float.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_set";

   function gsl_vector_complex_float_ptr (arg1 : access gsl_vector_complex_float; arg2 : size_t) return access GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float  -- /usr/include/gsl/gsl_vector_complex_float.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_ptr";

   function gsl_vector_complex_float_const_ptr (arg1 : access constant gsl_vector_complex_float; arg2 : size_t) return access constant GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float  -- /usr/include/gsl/gsl_vector_complex_float.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_float_const_ptr";

end GSL.Low_Level.gsl_gsl_vector_complex_float_h;
