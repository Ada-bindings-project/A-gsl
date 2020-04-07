pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_block_uint_h;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_vector_uint_h is

   type gsl_vector_uint is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_vector_uint.h:44
      stride : aliased size_t;  -- /usr/include/gsl/gsl_vector_uint.h:45
      data : access unsigned;  -- /usr/include/gsl/gsl_vector_uint.h:46
      block : access GSL.Low_Level.gsl_gsl_block_uint_h.gsl_block_uint;  -- /usr/include/gsl/gsl_vector_uint.h:47
      owner : aliased int;  -- /usr/include/gsl/gsl_vector_uint.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_uint.h:50

   type u_gsl_vector_uint_view is record
      vector : aliased gsl_vector_uint;  -- /usr/include/gsl/gsl_vector_uint.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_uint.h:55

   subtype gsl_vector_uint_view is u_gsl_vector_uint_view;  -- /usr/include/gsl/gsl_vector_uint.h:57

   type u_gsl_vector_uint_const_view is record
      vector : aliased gsl_vector_uint;  -- /usr/include/gsl/gsl_vector_uint.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_uint.h:62

   subtype gsl_vector_uint_const_view is u_gsl_vector_uint_const_view;  -- /usr/include/gsl/gsl_vector_uint.h:64

   function gsl_vector_uint_alloc (arg1 : size_t) return access gsl_vector_uint  -- /usr/include/gsl/gsl_vector_uint.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_alloc";

   function gsl_vector_uint_calloc (arg1 : size_t) return access gsl_vector_uint  -- /usr/include/gsl/gsl_vector_uint.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_calloc";

   function gsl_vector_uint_alloc_from_block
     (arg1 : access GSL.Low_Level.gsl_gsl_block_uint_h.gsl_block_uint;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t) return access gsl_vector_uint  -- /usr/include/gsl/gsl_vector_uint.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_alloc_from_block";

   function gsl_vector_uint_alloc_from_vector
     (arg1 : access gsl_vector_uint;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t) return access gsl_vector_uint  -- /usr/include/gsl/gsl_vector_uint.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_alloc_from_vector";

   procedure gsl_vector_uint_free (v : access gsl_vector_uint)  -- /usr/include/gsl/gsl_vector_uint.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_free";

   function gsl_vector_uint_view_array (v : access unsigned; n : size_t) return u_gsl_vector_uint_view  -- /usr/include/gsl/gsl_vector_uint.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_view_array";

   function gsl_vector_uint_view_array_with_stride
     (base : access unsigned;
      stride : size_t;
      n : size_t) return u_gsl_vector_uint_view  -- /usr/include/gsl/gsl_vector_uint.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_view_array_with_stride";

   function gsl_vector_uint_const_view_array (v : access unsigned; n : size_t) return u_gsl_vector_uint_const_view  -- /usr/include/gsl/gsl_vector_uint.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_const_view_array";

   function gsl_vector_uint_const_view_array_with_stride
     (base : access unsigned;
      stride : size_t;
      n : size_t) return u_gsl_vector_uint_const_view  -- /usr/include/gsl/gsl_vector_uint.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_const_view_array_with_stride";

   function gsl_vector_uint_subvector
     (v : access gsl_vector_uint;
      i : size_t;
      n : size_t) return u_gsl_vector_uint_view  -- /usr/include/gsl/gsl_vector_uint.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_subvector";

   function gsl_vector_uint_subvector_with_stride
     (v : access gsl_vector_uint;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_uint_view  -- /usr/include/gsl/gsl_vector_uint.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_subvector_with_stride";

   function gsl_vector_uint_const_subvector
     (v : access constant gsl_vector_uint;
      i : size_t;
      n : size_t) return u_gsl_vector_uint_const_view  -- /usr/include/gsl/gsl_vector_uint.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_const_subvector";

   function gsl_vector_uint_const_subvector_with_stride
     (v : access constant gsl_vector_uint;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_uint_const_view  -- /usr/include/gsl/gsl_vector_uint.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_const_subvector_with_stride";

   procedure gsl_vector_uint_set_zero (v : access gsl_vector_uint)  -- /usr/include/gsl/gsl_vector_uint.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_set_zero";

   procedure gsl_vector_uint_set_all (v : access gsl_vector_uint; x : unsigned)  -- /usr/include/gsl/gsl_vector_uint.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_set_all";

   function gsl_vector_uint_set_basis (v : access gsl_vector_uint; i : size_t) return int  -- /usr/include/gsl/gsl_vector_uint.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_set_basis";

   function gsl_vector_uint_fread (stream : access Interfaces.C_Streams.FILEs; v : access gsl_vector_uint) return int  -- /usr/include/gsl/gsl_vector_uint.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_fread";

   function gsl_vector_uint_fwrite (stream : access Interfaces.C_Streams.FILEs; v : access constant gsl_vector_uint) return int  -- /usr/include/gsl/gsl_vector_uint.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_fwrite";

   function gsl_vector_uint_fscanf (stream : access Interfaces.C_Streams.FILEs; v : access gsl_vector_uint) return int  -- /usr/include/gsl/gsl_vector_uint.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_fscanf";

   function gsl_vector_uint_fprintf
     (stream : access Interfaces.C_Streams.FILEs;
      v : access constant gsl_vector_uint;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_vector_uint.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_fprintf";

   function gsl_vector_uint_memcpy (dest : access gsl_vector_uint; src : access constant gsl_vector_uint) return int  -- /usr/include/gsl/gsl_vector_uint.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_memcpy";

   function gsl_vector_uint_reverse (v : access gsl_vector_uint) return int  -- /usr/include/gsl/gsl_vector_uint.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_reverse";

   function gsl_vector_uint_swap (v : access gsl_vector_uint; w : access gsl_vector_uint) return int  -- /usr/include/gsl/gsl_vector_uint.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_swap";

   function gsl_vector_uint_swap_elements
     (v : access gsl_vector_uint;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_vector_uint.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_swap_elements";

   function gsl_vector_uint_max (v : access constant gsl_vector_uint) return unsigned  -- /usr/include/gsl/gsl_vector_uint.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_max";

   function gsl_vector_uint_min (v : access constant gsl_vector_uint) return unsigned  -- /usr/include/gsl/gsl_vector_uint.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_min";

   procedure gsl_vector_uint_minmax
     (v : access constant gsl_vector_uint;
      min_out : access unsigned;
      max_out : access unsigned)  -- /usr/include/gsl/gsl_vector_uint.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_minmax";

   function gsl_vector_uint_max_index (v : access constant gsl_vector_uint) return size_t  -- /usr/include/gsl/gsl_vector_uint.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_max_index";

   function gsl_vector_uint_min_index (v : access constant gsl_vector_uint) return size_t  -- /usr/include/gsl/gsl_vector_uint.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_min_index";

   procedure gsl_vector_uint_minmax_index
     (v : access constant gsl_vector_uint;
      imin : access size_t;
      imax : access size_t)  -- /usr/include/gsl/gsl_vector_uint.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_minmax_index";

   function gsl_vector_uint_add (a : access gsl_vector_uint; b : access constant gsl_vector_uint) return int  -- /usr/include/gsl/gsl_vector_uint.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_add";

   function gsl_vector_uint_sub (a : access gsl_vector_uint; b : access constant gsl_vector_uint) return int  -- /usr/include/gsl/gsl_vector_uint.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_sub";

   function gsl_vector_uint_mul (a : access gsl_vector_uint; b : access constant gsl_vector_uint) return int  -- /usr/include/gsl/gsl_vector_uint.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_mul";

   function gsl_vector_uint_div (a : access gsl_vector_uint; b : access constant gsl_vector_uint) return int  -- /usr/include/gsl/gsl_vector_uint.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_div";

   function gsl_vector_uint_scale (a : access gsl_vector_uint; x : double) return int  -- /usr/include/gsl/gsl_vector_uint.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_scale";

   function gsl_vector_uint_add_constant (a : access gsl_vector_uint; x : double) return int  -- /usr/include/gsl/gsl_vector_uint.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_add_constant";

   function gsl_vector_uint_equal (u : access constant gsl_vector_uint; v : access constant gsl_vector_uint) return int  -- /usr/include/gsl/gsl_vector_uint.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_equal";

   function gsl_vector_uint_isnull (v : access constant gsl_vector_uint) return int  -- /usr/include/gsl/gsl_vector_uint.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_isnull";

   function gsl_vector_uint_ispos (v : access constant gsl_vector_uint) return int  -- /usr/include/gsl/gsl_vector_uint.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_ispos";

   function gsl_vector_uint_isneg (v : access constant gsl_vector_uint) return int  -- /usr/include/gsl/gsl_vector_uint.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_isneg";

   function gsl_vector_uint_isnonneg (v : access constant gsl_vector_uint) return int  -- /usr/include/gsl/gsl_vector_uint.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_isnonneg";

   function gsl_vector_uint_get (v : access constant gsl_vector_uint; i : size_t) return unsigned  -- /usr/include/gsl/gsl_vector_uint.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_get";

   procedure gsl_vector_uint_set
     (v : access gsl_vector_uint;
      i : size_t;
      x : unsigned)  -- /usr/include/gsl/gsl_vector_uint.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_set";

   function gsl_vector_uint_ptr (arg1 : access gsl_vector_uint; arg2 : size_t) return access unsigned  -- /usr/include/gsl/gsl_vector_uint.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_ptr";

   function gsl_vector_uint_const_ptr (arg1 : access constant gsl_vector_uint; arg2 : size_t) return access unsigned  -- /usr/include/gsl/gsl_vector_uint.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_uint_const_ptr";

end GSL.Low_Level.gsl_gsl_vector_uint_h;
