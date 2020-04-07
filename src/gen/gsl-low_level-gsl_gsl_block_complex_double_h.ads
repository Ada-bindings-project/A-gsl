pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_block_complex_double_h is

   type gsl_block_complex_struct is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_block_complex_double.h:40
      data : access double;  -- /usr/include/gsl/gsl_block_complex_double.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_block_complex_double.h:38

   subtype gsl_block_complex is gsl_block_complex_struct;  -- /usr/include/gsl/gsl_block_complex_double.h:44

   function gsl_block_complex_alloc (arg1 : size_t) return access gsl_block_complex  -- /usr/include/gsl/gsl_block_complex_double.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_alloc";

   function gsl_block_complex_calloc (arg1 : size_t) return access gsl_block_complex  -- /usr/include/gsl/gsl_block_complex_double.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_calloc";

   procedure gsl_block_complex_free (b : access gsl_block_complex)  -- /usr/include/gsl/gsl_block_complex_double.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_free";

   function gsl_block_complex_fread (stream : access Interfaces.C_Streams.FILEs; b : access gsl_block_complex) return int  -- /usr/include/gsl/gsl_block_complex_double.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_fread";

   function gsl_block_complex_fwrite (stream : access Interfaces.C_Streams.FILEs; b : access constant gsl_block_complex) return int  -- /usr/include/gsl/gsl_block_complex_double.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_fwrite";

   function gsl_block_complex_fscanf (stream : access Interfaces.C_Streams.FILEs; b : access gsl_block_complex) return int  -- /usr/include/gsl/gsl_block_complex_double.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_fscanf";

   function gsl_block_complex_fprintf
     (stream : access Interfaces.C_Streams.FILEs;
      b : access constant gsl_block_complex;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_complex_double.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_fprintf";

   function gsl_block_complex_raw_fread
     (stream : access Interfaces.C_Streams.FILEs;
      b : access double;
      n : size_t;
      stride : size_t) return int  -- /usr/include/gsl/gsl_block_complex_double.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_raw_fread";

   function gsl_block_complex_raw_fwrite
     (stream : access Interfaces.C_Streams.FILEs;
      b : access double;
      n : size_t;
      stride : size_t) return int  -- /usr/include/gsl/gsl_block_complex_double.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_raw_fwrite";

   function gsl_block_complex_raw_fscanf
     (stream : access Interfaces.C_Streams.FILEs;
      b : access double;
      n : size_t;
      stride : size_t) return int  -- /usr/include/gsl/gsl_block_complex_double.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_raw_fscanf";

   function gsl_block_complex_raw_fprintf
     (stream : access Interfaces.C_Streams.FILEs;
      b : access double;
      n : size_t;
      stride : size_t;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_complex_double.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_raw_fprintf";

   function gsl_block_complex_size (b : access constant gsl_block_complex) return size_t  -- /usr/include/gsl/gsl_block_complex_double.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_size";

   function gsl_block_complex_data (arg1 : access constant gsl_block_complex) return access double  -- /usr/include/gsl/gsl_block_complex_double.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_data";

end GSL.Low_Level.gsl_gsl_block_complex_double_h;
