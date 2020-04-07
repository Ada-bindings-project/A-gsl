pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with System;

with Interfaces.C_Streams;
with Interfaces.C.Strings;
limited with GSL.Low_Level.gsl_gsl_matrix_double_h;

package GSL.Low_Level.gsl_gsl_spmatrix_h is

   GSL_SPMATRIX_TRIPLET_C : constant := (0);  --  /usr/include/gsl/gsl_spmatrix.h:119
   GSL_SPMATRIX_CCS_C : constant := (1);  --  /usr/include/gsl/gsl_spmatrix.h:120
   GSL_SPMATRIX_CRS_C : constant := (2);  --  /usr/include/gsl/gsl_spmatrix.h:121
   --  arg-macro: function GSL_SPMATRIX_ISTRIPLET (m)
   --    return (m).sptype = GSL_SPMATRIX_TRIPLET_C;
   --  arg-macro: function GSL_SPMATRIX_ISCCS (m)
   --    return (m).sptype = GSL_SPMATRIX_CCS_C;
   --  arg-macro: function GSL_SPMATRIX_ISCRS (m)
   --    return (m).sptype = GSL_SPMATRIX_CRS_C;

   type gsl_spmatrix_tree is record
      tree : System.Address;  -- /usr/include/gsl/gsl_spmatrix.h:48
      node_array : System.Address;  -- /usr/include/gsl/gsl_spmatrix.h:49
      n : aliased size_t;  -- /usr/include/gsl/gsl_spmatrix.h:50
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_spmatrix.h:51

   type gsl_spmatrix_union5041 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            work : System.Address;  -- /usr/include/gsl/gsl_spmatrix.h:111
         when 1 =>
            work_sze : access size_t;  -- /usr/include/gsl/gsl_spmatrix.h:112
         when others =>
            work_dbl : access double;  -- /usr/include/gsl/gsl_spmatrix.h:113
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type gsl_spmatrix is record
      size1 : aliased size_t;  -- /usr/include/gsl/gsl_spmatrix.h:79
      size2 : aliased size_t;  -- /usr/include/gsl/gsl_spmatrix.h:80
      i : access size_t;  -- /usr/include/gsl/gsl_spmatrix.h:87
      data : access double;  -- /usr/include/gsl/gsl_spmatrix.h:89
      p : access size_t;  -- /usr/include/gsl/gsl_spmatrix.h:98
      nzmax : aliased size_t;  -- /usr/include/gsl/gsl_spmatrix.h:100
      nz : aliased size_t;  -- /usr/include/gsl/gsl_spmatrix.h:101
      tree_data : access gsl_spmatrix_tree;  -- /usr/include/gsl/gsl_spmatrix.h:103
      anon14309 : aliased gsl_spmatrix_union5041;  -- /usr/include/gsl/gsl_spmatrix.h:114
      sptype : aliased size_t;  -- /usr/include/gsl/gsl_spmatrix.h:116
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_spmatrix.h:117

   function gsl_spmatrix_alloc (arg1 : size_t; arg2 : size_t) return access gsl_spmatrix  -- /usr/include/gsl/gsl_spmatrix.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_alloc";

   function gsl_spmatrix_alloc_nzmax
     (arg1 : size_t;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t) return access gsl_spmatrix  -- /usr/include/gsl/gsl_spmatrix.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_alloc_nzmax";

   procedure gsl_spmatrix_free (m : access gsl_spmatrix)  -- /usr/include/gsl/gsl_spmatrix.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_free";

   function gsl_spmatrix_realloc (nzmax : size_t; m : access gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_realloc";

   function gsl_spmatrix_set_zero (m : access gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_set_zero";

   function gsl_spmatrix_nnz (m : access constant gsl_spmatrix) return size_t  -- /usr/include/gsl/gsl_spmatrix.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_nnz";

   function gsl_spmatrix_compare_idx
     (ia : size_t;
      ja : size_t;
      ib : size_t;
      jb : size_t) return int  -- /usr/include/gsl/gsl_spmatrix.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_compare_idx";

   function gsl_spmatrix_tree_rebuild (m : access gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_tree_rebuild";

   function gsl_spmatrix_memcpy (dest : access gsl_spmatrix; src : access constant gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_memcpy";

   function gsl_spmatrix_get
     (m : access constant gsl_spmatrix;
      i : size_t;
      j : size_t) return double  -- /usr/include/gsl/gsl_spmatrix.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_get";

   function gsl_spmatrix_set
     (m : access gsl_spmatrix;
      i : size_t;
      j : size_t;
      x : double) return int  -- /usr/include/gsl/gsl_spmatrix.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_set";

   function gsl_spmatrix_ptr
     (arg1 : access gsl_spmatrix;
      arg2 : size_t;
      arg3 : size_t) return access double  -- /usr/include/gsl/gsl_spmatrix.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ptr";

   function gsl_spmatrix_compcol (arg1 : access constant gsl_spmatrix) return access gsl_spmatrix  -- /usr/include/gsl/gsl_spmatrix.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_compcol";

   function gsl_spmatrix_ccs (arg1 : access constant gsl_spmatrix) return access gsl_spmatrix  -- /usr/include/gsl/gsl_spmatrix.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ccs";

   function gsl_spmatrix_crs (arg1 : access constant gsl_spmatrix) return access gsl_spmatrix  -- /usr/include/gsl/gsl_spmatrix.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_crs";

   procedure gsl_spmatrix_cumsum (n : size_t; c : access size_t)  -- /usr/include/gsl/gsl_spmatrix.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_cumsum";

   function gsl_spmatrix_fprintf
     (stream : access Interfaces.C_Streams.FILEs;
      m : access constant gsl_spmatrix;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_spmatrix.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_fprintf";

   function gsl_spmatrix_fscanf (arg1 : access Interfaces.C_Streams.FILEs) return access gsl_spmatrix  -- /usr/include/gsl/gsl_spmatrix.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_fscanf";

   function gsl_spmatrix_fwrite (stream : access Interfaces.C_Streams.FILEs; m : access constant gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_fwrite";

   function gsl_spmatrix_fread (stream : access Interfaces.C_Streams.FILEs; m : access gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_fread";

   function gsl_spmatrix_scale (m : access gsl_spmatrix; x : double) return int  -- /usr/include/gsl/gsl_spmatrix.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_scale";

   function gsl_spmatrix_minmax
     (m : access constant gsl_spmatrix;
      min_out : access double;
      max_out : access double) return int  -- /usr/include/gsl/gsl_spmatrix.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_minmax";

   function gsl_spmatrix_add
     (c : access gsl_spmatrix;
      a : access constant gsl_spmatrix;
      b : access constant gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_add";

   function gsl_spmatrix_d2sp (S : access gsl_spmatrix; A : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_spmatrix.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_d2sp";

   function gsl_spmatrix_sp2d (A : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; S : access constant gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_sp2d";

   function gsl_spmatrix_equal (a : access constant gsl_spmatrix; b : access constant gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_equal";

   function gsl_spmatrix_transpose (m : access gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_transpose";

   function gsl_spmatrix_transpose2 (m : access gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_transpose2";

   function gsl_spmatrix_transpose_memcpy (dest : access gsl_spmatrix; src : access constant gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_transpose_memcpy";

end GSL.Low_Level.gsl_gsl_spmatrix_h;
