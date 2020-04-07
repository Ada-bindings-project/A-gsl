pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

limited with GSL.Low_Level.gsl_gsl_complex_h;
limited with GSL.Low_Level.gsl_gsl_fft_real_float_h;

package GSL.Low_Level.gsl_gsl_fft_halfcomplex_float_h is

   function gsl_fft_halfcomplex_float_radix2_backward
     (data : access float;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_float_radix2_backward";

   function gsl_fft_halfcomplex_float_radix2_inverse
     (data : access float;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_float_radix2_inverse";

   function gsl_fft_halfcomplex_float_radix2_transform
     (data : access float;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_float_radix2_transform";

   type gsl_fft_halfcomplex_wavetable_float_array5669 is array (0 .. 63) of aliased size_t;
   type gsl_fft_halfcomplex_wavetable_float_array5793 is array (0 .. 63) of access GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
   type gsl_fft_halfcomplex_wavetable_float is record
      n : aliased size_t;  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:48
      nf : aliased size_t;  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:49
      factor : aliased gsl_fft_halfcomplex_wavetable_float_array5669;  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:50
      twiddle : gsl_fft_halfcomplex_wavetable_float_array5793;  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:51
      trig : access GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:52
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:54

   function gsl_fft_halfcomplex_wavetable_float_alloc (arg1 : size_t) return access gsl_fft_halfcomplex_wavetable_float  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_wavetable_float_alloc";

   procedure gsl_fft_halfcomplex_wavetable_float_free (wavetable : access gsl_fft_halfcomplex_wavetable_float)  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_wavetable_float_free";

   function gsl_fft_halfcomplex_float_backward
     (data : access float;
      stride : size_t;
      n : size_t;
      wavetable : access constant gsl_fft_halfcomplex_wavetable_float;
      work : access GSL.Low_Level.gsl_gsl_fft_real_float_h.gsl_fft_real_workspace_float) return int  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_float_backward";

   function gsl_fft_halfcomplex_float_inverse
     (data : access float;
      stride : size_t;
      n : size_t;
      wavetable : access constant gsl_fft_halfcomplex_wavetable_float;
      work : access GSL.Low_Level.gsl_gsl_fft_real_float_h.gsl_fft_real_workspace_float) return int  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_float_inverse";

   function gsl_fft_halfcomplex_float_transform
     (data : access float;
      stride : size_t;
      n : size_t;
      wavetable : access constant gsl_fft_halfcomplex_wavetable_float;
      work : access GSL.Low_Level.gsl_gsl_fft_real_float_h.gsl_fft_real_workspace_float) return int  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_float_transform";

   function gsl_fft_halfcomplex_float_unpack
     (halfcomplex_coefficient : access float;
      complex_coefficient : access float;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_float_unpack";

   function gsl_fft_halfcomplex_float_radix2_unpack
     (halfcomplex_coefficient : access float;
      complex_coefficient : access float;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_float_radix2_unpack";

end GSL.Low_Level.gsl_gsl_fft_halfcomplex_float_h;
