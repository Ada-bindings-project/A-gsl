pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with System;
limited with GSL.Low_Level.gsl_gsl_spmatrix_h;
limited with GSL.Low_Level.gsl_gsl_vector_double_h;

package GSL.Low_Level.gsl_gsl_splinalg_h is

   type gsl_splinalg_itersolve_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_splinalg.h:45
      alloc : access function (arg1 : size_t; arg2 : size_t) return System.Address;  -- /usr/include/gsl/gsl_splinalg.h:46
      iterate : access function
           (arg1 : access constant GSL.Low_Level.gsl_gsl_spmatrix_h.gsl_spmatrix;
            arg2 : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg3 : double;
            arg4 : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
            arg5 : System.Address) return int;  -- /usr/include/gsl/gsl_splinalg.h:47
      normr : access function (arg1 : System.Address) return double;  -- /usr/include/gsl/gsl_splinalg.h:49
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_splinalg.h:50
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_splinalg.h:51

   type gsl_splinalg_itersolve is record
      c_type : access constant gsl_splinalg_itersolve_type;  -- /usr/include/gsl/gsl_splinalg.h:55
      normr : aliased double;  -- /usr/include/gsl/gsl_splinalg.h:56
      state : System.Address;  -- /usr/include/gsl/gsl_splinalg.h:57
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_splinalg.h:58

   gsl_splinalg_itersolve_gmres : access constant gsl_splinalg_itersolve_type  -- /usr/include/gsl/gsl_splinalg.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_splinalg_itersolve_gmres";

   function gsl_splinalg_itersolve_alloc
     (arg1 : access constant gsl_splinalg_itersolve_type;
      arg2 : size_t;
      arg3 : size_t) return access gsl_splinalg_itersolve  -- /usr/include/gsl/gsl_splinalg.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_splinalg_itersolve_alloc";

   procedure gsl_splinalg_itersolve_free (w : access gsl_splinalg_itersolve)  -- /usr/include/gsl/gsl_splinalg.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_splinalg_itersolve_free";

   function gsl_splinalg_itersolve_name (arg1 : access constant gsl_splinalg_itersolve) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_splinalg.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_splinalg_itersolve_name";

   function gsl_splinalg_itersolve_iterate
     (A : access constant GSL.Low_Level.gsl_gsl_spmatrix_h.gsl_spmatrix;
      b : access constant GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      tol : double;
      x : access GSL.Low_Level.gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_splinalg_itersolve) return int  -- /usr/include/gsl/gsl_splinalg.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_splinalg_itersolve_iterate";

   function gsl_splinalg_itersolve_normr (w : access constant gsl_splinalg_itersolve) return double  -- /usr/include/gsl/gsl_splinalg.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_splinalg_itersolve_normr";

end GSL.Low_Level.gsl_gsl_splinalg_h;
