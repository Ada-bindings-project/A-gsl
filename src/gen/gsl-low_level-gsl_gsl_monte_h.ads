pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with System;

package GSL.Low_Level.gsl_gsl_monte_h is

   --  arg-macro: function GSL_MONTE_FN_EVAL (F, x)
   --    return *((F).f))(x,(F).dim,(F).params;
   type gsl_monte_function_struct is record
      f : access function
           (arg1 : access double;
            arg2 : size_t;
            arg3 : System.Address) return double;  -- /usr/include/gsl/gsl_monte.h:43
      dim : aliased size_t;  -- /usr/include/gsl/gsl_monte.h:44
      params : System.Address;  -- /usr/include/gsl/gsl_monte.h:45
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_monte.h:42

   subtype gsl_monte_function is gsl_monte_function_struct;  -- /usr/include/gsl/gsl_monte.h:48

end GSL.Low_Level.gsl_gsl_monte_h;
