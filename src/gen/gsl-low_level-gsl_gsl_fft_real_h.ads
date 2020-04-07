pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

limited with GSL.Low_Level.gsl_gsl_complex_h;

package GSL.Low_Level.gsl_gsl_fft_real_h is

   function gsl_fft_real_radix2_transform
     (data : access double;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_real.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_radix2_transform";

   type gsl_fft_real_wavetable_array5669 is array (0 .. 63) of aliased size_t;
   type gsl_fft_real_wavetable_array5671 is array (0 .. 63) of access GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;
   type gsl_fft_real_wavetable is record
      n : aliased size_t;  -- /usr/include/gsl/gsl_fft_real.h:45
      nf : aliased size_t;  -- /usr/include/gsl/gsl_fft_real.h:46
      factor : aliased gsl_fft_real_wavetable_array5669;  -- /usr/include/gsl/gsl_fft_real.h:47
      twiddle : gsl_fft_real_wavetable_array5671;  -- /usr/include/gsl/gsl_fft_real.h:48
      trig : access GSL.Low_Level.gsl_gsl_complex_h.gsl_complex;  -- /usr/include/gsl/gsl_fft_real.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_fft_real.h:51

   type gsl_fft_real_workspace is record
      n : aliased size_t;  -- /usr/include/gsl/gsl_fft_real.h:55
      scratch : access double;  -- /usr/include/gsl/gsl_fft_real.h:56
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_fft_real.h:58

   function gsl_fft_real_wavetable_alloc (arg1 : size_t) return access gsl_fft_real_wavetable  -- /usr/include/gsl/gsl_fft_real.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_wavetable_alloc";

   procedure gsl_fft_real_wavetable_free (wavetable : access gsl_fft_real_wavetable)  -- /usr/include/gsl/gsl_fft_real.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_wavetable_free";

   function gsl_fft_real_workspace_alloc (arg1 : size_t) return access gsl_fft_real_workspace  -- /usr/include/gsl/gsl_fft_real.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_workspace_alloc";

   procedure gsl_fft_real_workspace_free (workspace : access gsl_fft_real_workspace)  -- /usr/include/gsl/gsl_fft_real.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_workspace_free";

   function gsl_fft_real_transform
     (data : access double;
      stride : size_t;
      n : size_t;
      wavetable : access constant gsl_fft_real_wavetable;
      work : access gsl_fft_real_workspace) return int  -- /usr/include/gsl/gsl_fft_real.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_transform";

   function gsl_fft_real_unpack
     (real_coefficient : access double;
      complex_coefficient : access double;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_fft_real.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_unpack";

end GSL.Low_Level.gsl_gsl_fft_real_h;
