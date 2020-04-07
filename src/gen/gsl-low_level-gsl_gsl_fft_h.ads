pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package GSL.Low_Level.gsl_gsl_fft_h is

   subtype gsl_fft_direction is int;
   gsl_fft_forward : constant int := -1;
   gsl_fft_backward : constant int := 1;  -- /usr/include/gsl/gsl_fft.h:41

end GSL.Low_Level.gsl_gsl_fft_h;
