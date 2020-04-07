pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_complex_h;

with GSL.Low_Level.gsl_gsl_fft_h;

package GSL.Low_Level.gsl_gsl_fft_complex_float_h is

   function gsl_fft_complex_float_radix2_forward
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array_float;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_complex_float.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_float_radix2_forward";

   function gsl_fft_complex_float_radix2_backward
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array_float;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_complex_float.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_float_radix2_backward";

   function gsl_fft_complex_float_radix2_inverse
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array_float;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_complex_float.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_float_radix2_inverse";

   function gsl_fft_complex_float_radix2_transform
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array_float;
      stride : size_t;
      n : size_t;
      sign : GSL.Low_Level.gsl_gsl_fft_h.gsl_fft_direction) return int  -- /usr/include/gsl/gsl_fft_complex_float.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_float_radix2_transform";

   function gsl_fft_complex_float_radix2_dif_forward
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array_float;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_complex_float.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_float_radix2_dif_forward";

   function gsl_fft_complex_float_radix2_dif_backward
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array_float;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_complex_float.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_float_radix2_dif_backward";

   function gsl_fft_complex_float_radix2_dif_inverse
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array_float;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_complex_float.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_float_radix2_dif_inverse";

   function gsl_fft_complex_float_radix2_dif_transform
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array_float;
      stride : size_t;
      n : size_t;
      sign : GSL.Low_Level.gsl_gsl_fft_h.gsl_fft_direction) return int  -- /usr/include/gsl/gsl_fft_complex_float.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_float_radix2_dif_transform";

   type gsl_fft_complex_wavetable_float_array5669 is array (0 .. 63) of aliased size_t;
   type gsl_fft_complex_wavetable_float_array5793 is array (0 .. 63) of access GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;
   type gsl_fft_complex_wavetable_float is record
      n : aliased size_t;  -- /usr/include/gsl/gsl_fft_complex_float.h:82
      nf : aliased size_t;  -- /usr/include/gsl/gsl_fft_complex_float.h:83
      factor : aliased gsl_fft_complex_wavetable_float_array5669;  -- /usr/include/gsl/gsl_fft_complex_float.h:84
      twiddle : gsl_fft_complex_wavetable_float_array5793;  -- /usr/include/gsl/gsl_fft_complex_float.h:85
      trig : access GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_float;  -- /usr/include/gsl/gsl_fft_complex_float.h:86
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_fft_complex_float.h:88

   type gsl_fft_complex_workspace_float is record
      n : aliased size_t;  -- /usr/include/gsl/gsl_fft_complex_float.h:92
      scratch : access float;  -- /usr/include/gsl/gsl_fft_complex_float.h:93
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_fft_complex_float.h:95

   function gsl_fft_complex_wavetable_float_alloc (arg1 : size_t) return access gsl_fft_complex_wavetable_float  -- /usr/include/gsl/gsl_fft_complex_float.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_wavetable_float_alloc";

   procedure gsl_fft_complex_wavetable_float_free (wavetable : access gsl_fft_complex_wavetable_float)  -- /usr/include/gsl/gsl_fft_complex_float.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_wavetable_float_free";

   function gsl_fft_complex_workspace_float_alloc (arg1 : size_t) return access gsl_fft_complex_workspace_float  -- /usr/include/gsl/gsl_fft_complex_float.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_workspace_float_alloc";

   procedure gsl_fft_complex_workspace_float_free (workspace : access gsl_fft_complex_workspace_float)  -- /usr/include/gsl/gsl_fft_complex_float.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_workspace_float_free";

   function gsl_fft_complex_float_memcpy (dest : access gsl_fft_complex_wavetable_float; src : access gsl_fft_complex_wavetable_float) return int  -- /usr/include/gsl/gsl_fft_complex_float.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_float_memcpy";

   function gsl_fft_complex_float_forward
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array_float;
      stride : size_t;
      n : size_t;
      wavetable : access constant gsl_fft_complex_wavetable_float;
      work : access gsl_fft_complex_workspace_float) return int  -- /usr/include/gsl/gsl_fft_complex_float.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_float_forward";

   function gsl_fft_complex_float_backward
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array_float;
      stride : size_t;
      n : size_t;
      wavetable : access constant gsl_fft_complex_wavetable_float;
      work : access gsl_fft_complex_workspace_float) return int  -- /usr/include/gsl/gsl_fft_complex_float.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_float_backward";

   function gsl_fft_complex_float_inverse
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array_float;
      stride : size_t;
      n : size_t;
      wavetable : access constant gsl_fft_complex_wavetable_float;
      work : access gsl_fft_complex_workspace_float) return int  -- /usr/include/gsl/gsl_fft_complex_float.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_float_inverse";

   function gsl_fft_complex_float_transform
     (data : GSL.Low_Level.gsl_gsl_complex_h.gsl_complex_packed_array_float;
      stride : size_t;
      n : size_t;
      wavetable : access constant gsl_fft_complex_wavetable_float;
      work : access gsl_fft_complex_workspace_float;
      sign : GSL.Low_Level.gsl_gsl_fft_h.gsl_fft_direction) return int  -- /usr/include/gsl/gsl_fft_complex_float.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_float_transform";

end GSL.Low_Level.gsl_gsl_fft_complex_float_h;
