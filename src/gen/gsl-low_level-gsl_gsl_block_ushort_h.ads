pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_block_ushort_h is

   type gsl_block_ushort_struct is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_block_ushort.h:40
      data : access unsigned_short;  -- /usr/include/gsl/gsl_block_ushort.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_block_ushort.h:38

   subtype gsl_block_ushort is gsl_block_ushort_struct;  -- /usr/include/gsl/gsl_block_ushort.h:44

   function gsl_block_ushort_alloc (arg1 : size_t) return access gsl_block_ushort  -- /usr/include/gsl/gsl_block_ushort.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_alloc";

   function gsl_block_ushort_calloc (arg1 : size_t) return access gsl_block_ushort  -- /usr/include/gsl/gsl_block_ushort.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_calloc";

   procedure gsl_block_ushort_free (b : access gsl_block_ushort)  -- /usr/include/gsl/gsl_block_ushort.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_free";

   function gsl_block_ushort_fread (stream : access Interfaces.C_Streams.FILEs; b : access gsl_block_ushort) return int  -- /usr/include/gsl/gsl_block_ushort.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_fread";

   function gsl_block_ushort_fwrite (stream : access Interfaces.C_Streams.FILEs; b : access constant gsl_block_ushort) return int  -- /usr/include/gsl/gsl_block_ushort.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_fwrite";

   function gsl_block_ushort_fscanf (stream : access Interfaces.C_Streams.FILEs; b : access gsl_block_ushort) return int  -- /usr/include/gsl/gsl_block_ushort.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_fscanf";

   function gsl_block_ushort_fprintf
     (stream : access Interfaces.C_Streams.FILEs;
      b : access constant gsl_block_ushort;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_ushort.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_fprintf";

   function gsl_block_ushort_raw_fread
     (stream : access Interfaces.C_Streams.FILEs;
      b : access unsigned_short;
      n : size_t;
      stride : size_t) return int  -- /usr/include/gsl/gsl_block_ushort.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_raw_fread";

   function gsl_block_ushort_raw_fwrite
     (stream : access Interfaces.C_Streams.FILEs;
      b : access unsigned_short;
      n : size_t;
      stride : size_t) return int  -- /usr/include/gsl/gsl_block_ushort.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_raw_fwrite";

   function gsl_block_ushort_raw_fscanf
     (stream : access Interfaces.C_Streams.FILEs;
      b : access unsigned_short;
      n : size_t;
      stride : size_t) return int  -- /usr/include/gsl/gsl_block_ushort.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_raw_fscanf";

   function gsl_block_ushort_raw_fprintf
     (stream : access Interfaces.C_Streams.FILEs;
      b : access unsigned_short;
      n : size_t;
      stride : size_t;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_ushort.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_raw_fprintf";

   function gsl_block_ushort_size (b : access constant gsl_block_ushort) return size_t  -- /usr/include/gsl/gsl_block_ushort.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_size";

   function gsl_block_ushort_data (arg1 : access constant gsl_block_ushort) return access unsigned_short  -- /usr/include/gsl/gsl_block_ushort.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_data";

end GSL.Low_Level.gsl_gsl_block_ushort_h;
