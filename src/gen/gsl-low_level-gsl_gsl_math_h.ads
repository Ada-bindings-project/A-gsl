pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with System;

package GSL.Low_Level.gsl_gsl_math_h is

   M_SQRT3 : constant := 1.73205080756887729352744634151;  --  /usr/include/gsl/gsl_math.h:53

   M_SQRTPI : constant := 1.77245385090551602729816748334;  --  /usr/include/gsl/gsl_math.h:69

   M_LNPI : constant := 1.14472988584940017414342735135;  --  /usr/include/gsl/gsl_math.h:93

   M_EULER : constant := 0.57721566490153286060651209008;  --  /usr/include/gsl/gsl_math.h:97
   --  arg-macro: function GSL_IS_ODD (n)
   --    return (n) and 1;
   --  arg-macro: function GSL_IS_EVEN (n)
   --    return not(GSL_IS_ODD(n));
   --  arg-macro: function GSL_SIGN (x)
   --    return (x) >= 0.0 ? 1 : -1;
   --  arg-macro: function GSL_IS_REAL (x)
   --    return gsl_finite(x);
   --  arg-macro: function GSL_FN_EVAL (F, x)
   --    return *((F).function))(x,(F).params;
   --  arg-macro: function GSL_FN_FDF_EVAL_F (FDF, x)
   --    return *((FDF).f))(x,(FDF).params;
   --  arg-macro: function GSL_FN_FDF_EVAL_DF (FDF, x)
   --    return *((FDF).df))(x,(FDF).params;
   --  arg-macro: function GSL_FN_FDF_EVAL_F_DF (FDF, x, y, dy)
   --    return *((FDF).fdf))(x,(FDF).params,(y),(dy);
   --  arg-macro: function GSL_FN_VEC_EVAL (F, x, y)
   --    return *((F).function))(x,y,(F).params;

   type gsl_function_struct is record
      c_function : access function (arg1 : double; arg2 : System.Address) return double;  -- /usr/include/gsl/gsl_math.h:125
      params : System.Address;  -- /usr/include/gsl/gsl_math.h:126
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_math.h:123

   subtype gsl_function is gsl_function_struct;  -- /usr/include/gsl/gsl_math.h:129

   type gsl_function_fdf_struct is record
      f : access function (arg1 : double; arg2 : System.Address) return double;  -- /usr/include/gsl/gsl_math.h:137
      df : access function (arg1 : double; arg2 : System.Address) return double;  -- /usr/include/gsl/gsl_math.h:138
      fdf : access procedure
           (arg1 : double;
            arg2 : System.Address;
            arg3 : access double;
            arg4 : access double);  -- /usr/include/gsl/gsl_math.h:139
      params : System.Address;  -- /usr/include/gsl/gsl_math.h:140
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_math.h:135

   subtype gsl_function_fdf is gsl_function_fdf_struct;  -- /usr/include/gsl/gsl_math.h:143

   type gsl_function_vec_struct is record
      c_function : access function
           (arg1 : double;
            arg2 : access double;
            arg3 : System.Address) return int;  -- /usr/include/gsl/gsl_math.h:154
      params : System.Address;  -- /usr/include/gsl/gsl_math.h:155
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_math.h:152

   subtype gsl_function_vec is gsl_function_vec_struct;  -- /usr/include/gsl/gsl_math.h:158

end GSL.Low_Level.gsl_gsl_math_h;
