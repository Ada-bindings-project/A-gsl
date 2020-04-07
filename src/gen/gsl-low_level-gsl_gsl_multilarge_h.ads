pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with System;
limited with GSL.Low_Level.gsl_gsl_matrix_double_h;
limited with GSL.Low_Level.gsl_gsl_vector_double_h;

package GSL.Low_Level.gsl_gsl_multilarge_h is

   type gsl_multilarge_linear_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_multilarge.h:43
      alloc : access function (arg1 : size_t) return System.Address;  -- /usr/include/gsl/gsl_multilarge.h:44
      reset : access function (arg1 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge.h:45
      accumulate : access function
           (arg1 : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
            arg2 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg3 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge.h:46
      solve : access function
           (arg1 : double;
            arg2 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg3 : access double;
            arg4 : access double;
            arg5 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge.h:48
      rcond : access function (arg1 : access double; arg2 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge.h:50
      lcurve : access function
           (arg1 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg2 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg3 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg4 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge.h:51
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_multilarge.h:53
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multilarge.h:54

   type gsl_multilarge_linear_workspace is record
      c_type : access constant gsl_multilarge_linear_type;  -- /usr/include/gsl/gsl_multilarge.h:58
      state : System.Address;  -- /usr/include/gsl/gsl_multilarge.h:59
      p : aliased size_t;  -- /usr/include/gsl/gsl_multilarge.h:60
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multilarge.h:61

   gsl_multilarge_linear_normal : access constant gsl_multilarge_linear_type  -- /usr/include/gsl/gsl_multilarge.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_normal";

   gsl_multilarge_linear_tsqr : access constant gsl_multilarge_linear_type  -- /usr/include/gsl/gsl_multilarge.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_tsqr";

   function gsl_multilarge_linear_alloc (arg1 : access constant gsl_multilarge_linear_type; arg2 : size_t) return access gsl_multilarge_linear_workspace  -- /usr/include/gsl/gsl_multilarge.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_alloc";

   procedure gsl_multilarge_linear_free (w : access gsl_multilarge_linear_workspace)  -- /usr/include/gsl/gsl_multilarge.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_free";

   function gsl_multilarge_linear_name (arg1 : access constant gsl_multilarge_linear_workspace) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_multilarge.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_name";

   function gsl_multilarge_linear_reset (w : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_reset";

   function gsl_multilarge_linear_accumulate
     (X : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      y : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_accumulate";

   function gsl_multilarge_linear_solve
     (lambda : double;
      c : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      rnorm : access double;
      snorm : access double;
      w : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_solve";

   function gsl_multilarge_linear_rcond (rcond : access double; w : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_rcond";

   function gsl_multilarge_linear_lcurve
     (reg_param : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      rho : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      eta : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_lcurve";

   function gsl_multilarge_linear_wstdform1
     (L : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      w : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      Xs : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      ys : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_wstdform1";

   function gsl_multilarge_linear_stdform1
     (L : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      Xs : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      ys : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_stdform1";

   function gsl_multilarge_linear_L_decomp (L : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix; tau : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multilarge.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_L_decomp";

   function gsl_multilarge_linear_wstdform2
     (LQR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      Ltau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      w : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      Xs : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      ys : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_wstdform2";

   function gsl_multilarge_linear_stdform2
     (LQR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      Ltau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      X : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      Xs : access GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      ys : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_stdform2";

   function gsl_multilarge_linear_genform1
     (L : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      cs : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      c : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_genform1";

   function gsl_multilarge_linear_genform2
     (LQR : access constant GSL.Low_Level.gsl_gsl_matrix_double_h.gsl_matrix;
      Ltau : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      cs : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      c : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_genform2";

end GSL.Low_Level.gsl_gsl_multilarge_h;
