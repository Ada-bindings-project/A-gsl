pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package GSL.Low_Level.gsl_gsl_mode_h is

   GSL_PREC_DOUBLE : constant := 0;  --  /usr/include/gsl/gsl_mode.h:66
   GSL_PREC_SINGLE : constant := 1;  --  /usr/include/gsl/gsl_mode.h:67
   GSL_PREC_APPROX : constant := 2;  --  /usr/include/gsl/gsl_mode.h:68
   --  arg-macro: function GSL_MODE_PREC (mt)
   --    return (mt) and (unsigned int)7;

   GSL_MODE_DEFAULT : constant := 0;  --  /usr/include/gsl/gsl_mode.h:83

   subtype gsl_mode_t is unsigned;  -- /usr/include/gsl/gsl_mode.h:50

end GSL.Low_Level.gsl_gsl_mode_h;
