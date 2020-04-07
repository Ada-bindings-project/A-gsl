pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_block_ushort_h;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_vector_ushort_h is

   type gsl_vector_ushort is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_vector_ushort.h:44
      stride : aliased size_t;  -- /usr/include/gsl/gsl_vector_ushort.h:45
      data : access unsigned_short;  -- /usr/include/gsl/gsl_vector_ushort.h:46
      block : access GSL.Low_Level.gsl_gsl_block_ushort_h.gsl_block_ushort;  -- /usr/include/gsl/gsl_vector_ushort.h:47
      owner : aliased int;  -- /usr/include/gsl/gsl_vector_ushort.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_ushort.h:50

   type u_gsl_vector_ushort_view is record
      vector : aliased gsl_vector_ushort;  -- /usr/include/gsl/gsl_vector_ushort.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_ushort.h:55

   subtype gsl_vector_ushort_view is u_gsl_vector_ushort_view;  -- /usr/include/gsl/gsl_vector_ushort.h:57

   type u_gsl_vector_ushort_const_view is record
      vector : aliased gsl_vector_ushort;  -- /usr/include/gsl/gsl_vector_ushort.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_ushort.h:62

   subtype gsl_vector_ushort_const_view is u_gsl_vector_ushort_const_view;  -- /usr/include/gsl/gsl_vector_ushort.h:64

   function gsl_vector_ushort_alloc (arg1 : size_t) return access gsl_vector_ushort  -- /usr/include/gsl/gsl_vector_ushort.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_alloc";

   function gsl_vector_ushort_calloc (arg1 : size_t) return access gsl_vector_ushort  -- /usr/include/gsl/gsl_vector_ushort.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_calloc";

   function gsl_vector_ushort_alloc_from_block
     (arg1 : access GSL.Low_Level.gsl_gsl_block_ushort_h.gsl_block_ushort;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t) return access gsl_vector_ushort  -- /usr/include/gsl/gsl_vector_ushort.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_alloc_from_block";

   function gsl_vector_ushort_alloc_from_vector
     (arg1 : access gsl_vector_ushort;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t) return access gsl_vector_ushort  -- /usr/include/gsl/gsl_vector_ushort.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_alloc_from_vector";

   procedure gsl_vector_ushort_free (v : access gsl_vector_ushort)  -- /usr/include/gsl/gsl_vector_ushort.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_free";

   function gsl_vector_ushort_view_array (v : access unsigned_short; n : size_t) return u_gsl_vector_ushort_view  -- /usr/include/gsl/gsl_vector_ushort.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_view_array";

   function gsl_vector_ushort_view_array_with_stride
     (base : access unsigned_short;
      stride : size_t;
      n : size_t) return u_gsl_vector_ushort_view  -- /usr/include/gsl/gsl_vector_ushort.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_view_array_with_stride";

   function gsl_vector_ushort_const_view_array (v : access unsigned_short; n : size_t) return u_gsl_vector_ushort_const_view  -- /usr/include/gsl/gsl_vector_ushort.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_const_view_array";

   function gsl_vector_ushort_const_view_array_with_stride
     (base : access unsigned_short;
      stride : size_t;
      n : size_t) return u_gsl_vector_ushort_const_view  -- /usr/include/gsl/gsl_vector_ushort.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_const_view_array_with_stride";

   function gsl_vector_ushort_subvector
     (v : access gsl_vector_ushort;
      i : size_t;
      n : size_t) return u_gsl_vector_ushort_view  -- /usr/include/gsl/gsl_vector_ushort.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_subvector";

   function gsl_vector_ushort_subvector_with_stride
     (v : access gsl_vector_ushort;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_ushort_view  -- /usr/include/gsl/gsl_vector_ushort.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_subvector_with_stride";

   function gsl_vector_ushort_const_subvector
     (v : access constant gsl_vector_ushort;
      i : size_t;
      n : size_t) return u_gsl_vector_ushort_const_view  -- /usr/include/gsl/gsl_vector_ushort.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_const_subvector";

   function gsl_vector_ushort_const_subvector_with_stride
     (v : access constant gsl_vector_ushort;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_ushort_const_view  -- /usr/include/gsl/gsl_vector_ushort.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_const_subvector_with_stride";

   procedure gsl_vector_ushort_set_zero (v : access gsl_vector_ushort)  -- /usr/include/gsl/gsl_vector_ushort.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_set_zero";

   procedure gsl_vector_ushort_set_all (v : access gsl_vector_ushort; x : unsigned_short)  -- /usr/include/gsl/gsl_vector_ushort.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_set_all";

   function gsl_vector_ushort_set_basis (v : access gsl_vector_ushort; i : size_t) return int  -- /usr/include/gsl/gsl_vector_ushort.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_set_basis";

   function gsl_vector_ushort_fread (stream : access Interfaces.C_Streams.FILEs; v : access gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_vector_ushort.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_fread";

   function gsl_vector_ushort_fwrite (stream : access Interfaces.C_Streams.FILEs; v : access constant gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_vector_ushort.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_fwrite";

   function gsl_vector_ushort_fscanf (stream : access Interfaces.C_Streams.FILEs; v : access gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_vector_ushort.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_fscanf";

   function gsl_vector_ushort_fprintf
     (stream : access Interfaces.C_Streams.FILEs;
      v : access constant gsl_vector_ushort;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_vector_ushort.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_fprintf";

   function gsl_vector_ushort_memcpy (dest : access gsl_vector_ushort; src : access constant gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_vector_ushort.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_memcpy";

   function gsl_vector_ushort_reverse (v : access gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_vector_ushort.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_reverse";

   function gsl_vector_ushort_swap (v : access gsl_vector_ushort; w : access gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_vector_ushort.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_swap";

   function gsl_vector_ushort_swap_elements
     (v : access gsl_vector_ushort;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_vector_ushort.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_swap_elements";

   function gsl_vector_ushort_max (v : access constant gsl_vector_ushort) return unsigned_short  -- /usr/include/gsl/gsl_vector_ushort.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_max";

   function gsl_vector_ushort_min (v : access constant gsl_vector_ushort) return unsigned_short  -- /usr/include/gsl/gsl_vector_ushort.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_min";

   procedure gsl_vector_ushort_minmax
     (v : access constant gsl_vector_ushort;
      min_out : access unsigned_short;
      max_out : access unsigned_short)  -- /usr/include/gsl/gsl_vector_ushort.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_minmax";

   function gsl_vector_ushort_max_index (v : access constant gsl_vector_ushort) return size_t  -- /usr/include/gsl/gsl_vector_ushort.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_max_index";

   function gsl_vector_ushort_min_index (v : access constant gsl_vector_ushort) return size_t  -- /usr/include/gsl/gsl_vector_ushort.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_min_index";

   procedure gsl_vector_ushort_minmax_index
     (v : access constant gsl_vector_ushort;
      imin : access size_t;
      imax : access size_t)  -- /usr/include/gsl/gsl_vector_ushort.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_minmax_index";

   function gsl_vector_ushort_add (a : access gsl_vector_ushort; b : access constant gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_vector_ushort.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_add";

   function gsl_vector_ushort_sub (a : access gsl_vector_ushort; b : access constant gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_vector_ushort.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_sub";

   function gsl_vector_ushort_mul (a : access gsl_vector_ushort; b : access constant gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_vector_ushort.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_mul";

   function gsl_vector_ushort_div (a : access gsl_vector_ushort; b : access constant gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_vector_ushort.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_div";

   function gsl_vector_ushort_scale (a : access gsl_vector_ushort; x : double) return int  -- /usr/include/gsl/gsl_vector_ushort.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_scale";

   function gsl_vector_ushort_add_constant (a : access gsl_vector_ushort; x : double) return int  -- /usr/include/gsl/gsl_vector_ushort.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_add_constant";

   function gsl_vector_ushort_equal (u : access constant gsl_vector_ushort; v : access constant gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_vector_ushort.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_equal";

   function gsl_vector_ushort_isnull (v : access constant gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_vector_ushort.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_isnull";

   function gsl_vector_ushort_ispos (v : access constant gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_vector_ushort.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_ispos";

   function gsl_vector_ushort_isneg (v : access constant gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_vector_ushort.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_isneg";

   function gsl_vector_ushort_isnonneg (v : access constant gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_vector_ushort.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_isnonneg";

   function gsl_vector_ushort_get (v : access constant gsl_vector_ushort; i : size_t) return unsigned_short  -- /usr/include/gsl/gsl_vector_ushort.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_get";

   procedure gsl_vector_ushort_set
     (v : access gsl_vector_ushort;
      i : size_t;
      x : unsigned_short)  -- /usr/include/gsl/gsl_vector_ushort.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_set";

   function gsl_vector_ushort_ptr (arg1 : access gsl_vector_ushort; arg2 : size_t) return access unsigned_short  -- /usr/include/gsl/gsl_vector_ushort.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_ptr";

   function gsl_vector_ushort_const_ptr (arg1 : access constant gsl_vector_ushort; arg2 : size_t) return access unsigned_short  -- /usr/include/gsl/gsl_vector_ushort.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ushort_const_ptr";

end GSL.Low_Level.gsl_gsl_vector_ushort_h;
