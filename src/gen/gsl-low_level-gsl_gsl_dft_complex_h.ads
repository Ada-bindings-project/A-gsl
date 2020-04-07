pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_fft_h;

package GSL.Low_Level.gsl_gsl_dft_complex_h is

   function gsl_dft_complex_forward
     (data : access double;
      stride : size_t;
      n : size_t;
      result : access double) return int  -- /usr/include/gsl/gsl_dft_complex.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dft_complex_forward";

   function gsl_dft_complex_backward
     (data : access double;
      stride : size_t;
      n : size_t;
      result : access double) return int  -- /usr/include/gsl/gsl_dft_complex.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dft_complex_backward";

   function gsl_dft_complex_inverse
     (data : access double;
      stride : size_t;
      n : size_t;
      result : access double) return int  -- /usr/include/gsl/gsl_dft_complex.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dft_complex_inverse";

   function gsl_dft_complex_transform
     (data : access double;
      stride : size_t;
      n : size_t;
      result : access double;
      sign : GSL.Low_Level.gsl_gsl_fft_h.gsl_fft_direction) return int  -- /usr/include/gsl/gsl_dft_complex.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dft_complex_transform";

end GSL.Low_Level.gsl_gsl_dft_complex_h;
