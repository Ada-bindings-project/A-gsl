pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_sum_h is

   type gsl_sum_levin_u_workspace is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_sum.h:53
      i : aliased size_t;  -- /usr/include/gsl/gsl_sum.h:54
      terms_used : aliased size_t;  -- /usr/include/gsl/gsl_sum.h:55
      sum_plain : aliased double;  -- /usr/include/gsl/gsl_sum.h:56
      q_num : access double;  -- /usr/include/gsl/gsl_sum.h:57
      q_den : access double;  -- /usr/include/gsl/gsl_sum.h:58
      dq_num : access double;  -- /usr/include/gsl/gsl_sum.h:59
      dq_den : access double;  -- /usr/include/gsl/gsl_sum.h:60
      dsum : access double;  -- /usr/include/gsl/gsl_sum.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_sum.h:63

   function gsl_sum_levin_u_alloc (arg1 : size_t) return access gsl_sum_levin_u_workspace  -- /usr/include/gsl/gsl_sum.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sum_levin_u_alloc";

   procedure gsl_sum_levin_u_free (w : access gsl_sum_levin_u_workspace)  -- /usr/include/gsl/gsl_sum.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sum_levin_u_free";

   function gsl_sum_levin_u_accel
     (c_array : access double;
      n : size_t;
      w : access gsl_sum_levin_u_workspace;
      sum_accel : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_sum.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sum_levin_u_accel";

   function gsl_sum_levin_u_minmax
     (c_array : access double;
      n : size_t;
      min_terms : size_t;
      max_terms : size_t;
      w : access gsl_sum_levin_u_workspace;
      sum_accel : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_sum.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sum_levin_u_minmax";

   function gsl_sum_levin_u_step
     (term : double;
      n : size_t;
      nmax : size_t;
      w : access gsl_sum_levin_u_workspace;
      sum_accel : access double) return int  -- /usr/include/gsl/gsl_sum.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sum_levin_u_step";

   type gsl_sum_levin_utrunc_workspace is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_sum.h:130
      i : aliased size_t;  -- /usr/include/gsl/gsl_sum.h:131
      terms_used : aliased size_t;  -- /usr/include/gsl/gsl_sum.h:132
      sum_plain : aliased double;  -- /usr/include/gsl/gsl_sum.h:133
      q_num : access double;  -- /usr/include/gsl/gsl_sum.h:134
      q_den : access double;  -- /usr/include/gsl/gsl_sum.h:135
      dsum : access double;  -- /usr/include/gsl/gsl_sum.h:136
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_sum.h:138

   function gsl_sum_levin_utrunc_alloc (arg1 : size_t) return access gsl_sum_levin_utrunc_workspace  -- /usr/include/gsl/gsl_sum.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sum_levin_utrunc_alloc";

   procedure gsl_sum_levin_utrunc_free (w : access gsl_sum_levin_utrunc_workspace)  -- /usr/include/gsl/gsl_sum.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sum_levin_utrunc_free";

   function gsl_sum_levin_utrunc_accel
     (c_array : access double;
      n : size_t;
      w : access gsl_sum_levin_utrunc_workspace;
      sum_accel : access double;
      abserr_trunc : access double) return int  -- /usr/include/gsl/gsl_sum.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sum_levin_utrunc_accel";

   function gsl_sum_levin_utrunc_minmax
     (c_array : access double;
      n : size_t;
      min_terms : size_t;
      max_terms : size_t;
      w : access gsl_sum_levin_utrunc_workspace;
      sum_accel : access double;
      abserr_trunc : access double) return int  -- /usr/include/gsl/gsl_sum.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sum_levin_utrunc_minmax";

   function gsl_sum_levin_utrunc_step
     (term : double;
      n : size_t;
      w : access gsl_sum_levin_utrunc_workspace;
      sum_accel : access double) return int  -- /usr/include/gsl/gsl_sum.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sum_levin_utrunc_step";

end GSL.Low_Level.gsl_gsl_sum_h;
