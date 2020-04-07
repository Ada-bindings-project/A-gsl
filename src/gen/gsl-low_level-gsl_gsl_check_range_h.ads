pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package GSL.Low_Level.gsl_gsl_check_range_h is

   GSL_RANGE_CHECK : constant := 1;  --  /usr/include/gsl/gsl_check_range.h:51

   gsl_check_range : aliased int  -- /usr/include/gsl/gsl_check_range.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_check_range";

end GSL.Low_Level.gsl_gsl_check_range_h;
