pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_version_h is

   GSL_VERSION_C : aliased constant String := "2.5" & ASCII.NUL;  --  /usr/include/gsl/gsl_version.h:18
   GSL_MAJOR_VERSION : constant := 2;  --  /usr/include/gsl/gsl_version.h:19
   GSL_MINOR_VERSION : constant := 5;  --  /usr/include/gsl/gsl_version.h:20

   gsl_version : Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_version.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_version";

end GSL.Low_Level.gsl_gsl_version_h;
