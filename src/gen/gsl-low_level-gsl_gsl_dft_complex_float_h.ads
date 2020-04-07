pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_fft_h;

package GSL.Low_Level.gsl_gsl_dft_complex_float_h is

   function gsl_dft_complex_float_forward
     (data : access float;
      stride : size_t;
      n : size_t;
      result : access float) return int  -- /usr/include/gsl/gsl_dft_complex_float.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dft_complex_float_forward";

   function gsl_dft_complex_float_backward
     (data : access float;
      stride : size_t;
      n : size_t;
      result : access float) return int  -- /usr/include/gsl/gsl_dft_complex_float.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dft_complex_float_backward";

   function gsl_dft_complex_float_inverse
     (data : access float;
      stride : size_t;
      n : size_t;
      result : access float) return int  -- /usr/include/gsl/gsl_dft_complex_float.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dft_complex_float_inverse";

   function gsl_dft_complex_float_transform
     (data : access float;
      stride : size_t;
      n : size_t;
      result : access float;
      sign : GSL.Low_Level.gsl_gsl_fft_h.gsl_fft_direction) return int  -- /usr/include/gsl/gsl_dft_complex_float.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dft_complex_float_transform";

end GSL.Low_Level.gsl_gsl_dft_complex_float_h;
