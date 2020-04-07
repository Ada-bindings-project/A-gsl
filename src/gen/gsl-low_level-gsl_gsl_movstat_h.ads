pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with System;
limited with GSL.Low_Level.gsl_gsl_vector_double_h;

package GSL.Low_Level.gsl_gsl_movstat_h is

   --  arg-macro: function GSL_MOVSTAT_FN_EVAL (F, n, x)
   --    return *((F).function))((n),(x),(F).params;
   type gsl_movstat_end_t is 
     (GSL_MOVSTAT_END_PADZERO,
      GSL_MOVSTAT_END_PADVALUE,
      GSL_MOVSTAT_END_TRUNCATE)
   with Convention => C;  -- /usr/include/gsl/gsl_movstat.h:43

   type gsl_movstat_accum is record
      size : access function (arg1 : size_t) return size_t;  -- /usr/include/gsl/gsl_movstat.h:55
      init : access function (arg1 : size_t; arg2 : System.Address) return int;  -- /usr/include/gsl/gsl_movstat.h:56
      insert : access function (arg1 : double; arg2 : System.Address) return int;  -- /usr/include/gsl/gsl_movstat.h:57
      delete : access function (arg1 : System.Address) return int;  -- /usr/include/gsl/gsl_movstat.h:58
      get : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : System.Address) return int;  -- /usr/include/gsl/gsl_movstat.h:59
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_movstat.h:60

   type gsl_movstat_function is record
      c_function : access function
           (arg1 : size_t;
            arg2 : access double;
            arg3 : System.Address) return double;  -- /usr/include/gsl/gsl_movstat.h:64
      params : System.Address;  -- /usr/include/gsl/gsl_movstat.h:65
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_movstat.h:66

   type gsl_movstat_workspace is record
      H : aliased size_t;  -- /usr/include/gsl/gsl_movstat.h:74
      J : aliased size_t;  -- /usr/include/gsl/gsl_movstat.h:75
      K : aliased size_t;  -- /usr/include/gsl/gsl_movstat.h:76
      work : access double;  -- /usr/include/gsl/gsl_movstat.h:77
      state : System.Address;  -- /usr/include/gsl/gsl_movstat.h:78
      state_size : aliased size_t;  -- /usr/include/gsl/gsl_movstat.h:79
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_movstat.h:80

   function gsl_movstat_alloc (arg1 : size_t) return access gsl_movstat_workspace  -- /usr/include/gsl/gsl_movstat.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_alloc";

   function gsl_movstat_alloc2 (arg1 : size_t; arg2 : size_t) return access gsl_movstat_workspace  -- /usr/include/gsl/gsl_movstat.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_alloc2";

   function gsl_movstat_alloc_with_size
     (arg1 : size_t;
      arg2 : size_t;
      arg3 : size_t) return access gsl_movstat_workspace  -- /usr/include/gsl/gsl_movstat.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_alloc_with_size";

   procedure gsl_movstat_free (w : access gsl_movstat_workspace)  -- /usr/include/gsl/gsl_movstat.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_free";

   function gsl_movstat_apply_accum
     (endtype : gsl_movstat_end_t;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      accum : access constant gsl_movstat_accum;
      accum_params : System.Address;
      y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      z : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_movstat_workspace) return int  -- /usr/include/gsl/gsl_movstat.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_apply_accum";

   function gsl_movstat_apply
     (endtype : gsl_movstat_end_t;
      F : access constant gsl_movstat_function;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_movstat_workspace) return int  -- /usr/include/gsl/gsl_movstat.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_apply";

   function gsl_movstat_fill
     (endtype : gsl_movstat_end_t;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      idx : size_t;
      H : size_t;
      J : size_t;
      window : access double) return size_t  -- /usr/include/gsl/gsl_movstat.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_fill";

   function gsl_movstat_mean
     (endtype : gsl_movstat_end_t;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_movstat_workspace) return int  -- /usr/include/gsl/gsl_movstat.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_mean";

   function gsl_movstat_variance
     (endtype : gsl_movstat_end_t;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_movstat_workspace) return int  -- /usr/include/gsl/gsl_movstat.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_variance";

   function gsl_movstat_sd
     (endtype : gsl_movstat_end_t;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_movstat_workspace) return int  -- /usr/include/gsl/gsl_movstat.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_sd";

   function gsl_movstat_median
     (endtype : gsl_movstat_end_t;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_movstat_workspace) return int  -- /usr/include/gsl/gsl_movstat.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_median";

   function gsl_movstat_min
     (endtype : gsl_movstat_end_t;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_movstat_workspace) return int  -- /usr/include/gsl/gsl_movstat.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_min";

   function gsl_movstat_max
     (endtype : gsl_movstat_end_t;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_movstat_workspace) return int  -- /usr/include/gsl/gsl_movstat.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_max";

   function gsl_movstat_minmax
     (endtype : gsl_movstat_end_t;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y_min : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y_max : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_movstat_workspace) return int  -- /usr/include/gsl/gsl_movstat.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_minmax";

   function gsl_movstat_mad0
     (endtype : gsl_movstat_end_t;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      xmedian : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      xmad : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_movstat_workspace) return int  -- /usr/include/gsl/gsl_movstat.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_mad0";

   function gsl_movstat_mad
     (endtype : gsl_movstat_end_t;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      xmedian : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      xmad : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_movstat_workspace) return int  -- /usr/include/gsl/gsl_movstat.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_mad";

   function gsl_movstat_qqr
     (endtype : gsl_movstat_end_t;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      q : double;
      xqqr : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_movstat_workspace) return int  -- /usr/include/gsl/gsl_movstat.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_qqr";

   function gsl_movstat_Sn
     (endtype : gsl_movstat_end_t;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      xscale : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_movstat_workspace) return int  -- /usr/include/gsl/gsl_movstat.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_Sn";

   function gsl_movstat_Qn
     (endtype : gsl_movstat_end_t;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      xscale : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_movstat_workspace) return int  -- /usr/include/gsl/gsl_movstat.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_Qn";

   function gsl_movstat_sum
     (endtype : gsl_movstat_end_t;
      x : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_movstat_workspace) return int  -- /usr/include/gsl/gsl_movstat.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_sum";

   gsl_movstat_accum_mad : access constant gsl_movstat_accum  -- /usr/include/gsl/gsl_movstat.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_accum_mad";

   gsl_movstat_accum_max : access constant gsl_movstat_accum  -- /usr/include/gsl/gsl_movstat.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_accum_max";

   gsl_movstat_accum_mean : access constant gsl_movstat_accum  -- /usr/include/gsl/gsl_movstat.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_accum_mean";

   gsl_movstat_accum_median : access constant gsl_movstat_accum  -- /usr/include/gsl/gsl_movstat.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_accum_median";

   gsl_movstat_accum_min : access constant gsl_movstat_accum  -- /usr/include/gsl/gsl_movstat.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_accum_min";

   gsl_movstat_accum_minmax : access constant gsl_movstat_accum  -- /usr/include/gsl/gsl_movstat.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_accum_minmax";

   gsl_movstat_accum_sd : access constant gsl_movstat_accum  -- /usr/include/gsl/gsl_movstat.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_accum_sd";

   gsl_movstat_accum_Sn : access constant gsl_movstat_accum  -- /usr/include/gsl/gsl_movstat.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_accum_Sn";

   gsl_movstat_accum_sum : access constant gsl_movstat_accum  -- /usr/include/gsl/gsl_movstat.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_accum_sum";

   gsl_movstat_accum_Qn : access constant gsl_movstat_accum  -- /usr/include/gsl/gsl_movstat.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_accum_Qn";

   gsl_movstat_accum_qqr : access constant gsl_movstat_accum  -- /usr/include/gsl/gsl_movstat.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_accum_qqr";

   gsl_movstat_accum_userfunc : access constant gsl_movstat_accum  -- /usr/include/gsl/gsl_movstat.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_accum_userfunc";

   gsl_movstat_accum_variance : access constant gsl_movstat_accum  -- /usr/include/gsl/gsl_movstat.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_movstat_accum_variance";

end GSL.Low_Level.gsl_gsl_movstat_h;
