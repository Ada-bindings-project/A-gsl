pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_block_uchar_h is

   type gsl_block_uchar_struct is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_block_uchar.h:40
      data : access unsigned_char;  -- /usr/include/gsl/gsl_block_uchar.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_block_uchar.h:38

   subtype gsl_block_uchar is gsl_block_uchar_struct;  -- /usr/include/gsl/gsl_block_uchar.h:44

   function gsl_block_uchar_alloc (arg1 : size_t) return access gsl_block_uchar  -- /usr/include/gsl/gsl_block_uchar.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uchar_alloc";

   function gsl_block_uchar_calloc (arg1 : size_t) return access gsl_block_uchar  -- /usr/include/gsl/gsl_block_uchar.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uchar_calloc";

   procedure gsl_block_uchar_free (b : access gsl_block_uchar)  -- /usr/include/gsl/gsl_block_uchar.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uchar_free";

   function gsl_block_uchar_fread (stream : access Interfaces.C_Streams.FILEs; b : access gsl_block_uchar) return int  -- /usr/include/gsl/gsl_block_uchar.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uchar_fread";

   function gsl_block_uchar_fwrite (stream : access Interfaces.C_Streams.FILEs; b : access constant gsl_block_uchar) return int  -- /usr/include/gsl/gsl_block_uchar.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uchar_fwrite";

   function gsl_block_uchar_fscanf (stream : access Interfaces.C_Streams.FILEs; b : access gsl_block_uchar) return int  -- /usr/include/gsl/gsl_block_uchar.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uchar_fscanf";

   function gsl_block_uchar_fprintf
     (stream : access Interfaces.C_Streams.FILEs;
      b : access constant gsl_block_uchar;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_uchar.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uchar_fprintf";

   function gsl_block_uchar_raw_fread
     (stream : access Interfaces.C_Streams.FILEs;
      b : access unsigned_char;
      n : size_t;
      stride : size_t) return int  -- /usr/include/gsl/gsl_block_uchar.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uchar_raw_fread";

   function gsl_block_uchar_raw_fwrite
     (stream : access Interfaces.C_Streams.FILEs;
      b : access unsigned_char;
      n : size_t;
      stride : size_t) return int  -- /usr/include/gsl/gsl_block_uchar.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uchar_raw_fwrite";

   function gsl_block_uchar_raw_fscanf
     (stream : access Interfaces.C_Streams.FILEs;
      b : access unsigned_char;
      n : size_t;
      stride : size_t) return int  -- /usr/include/gsl/gsl_block_uchar.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uchar_raw_fscanf";

   function gsl_block_uchar_raw_fprintf
     (stream : access Interfaces.C_Streams.FILEs;
      b : access unsigned_char;
      n : size_t;
      stride : size_t;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_uchar.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uchar_raw_fprintf";

   function gsl_block_uchar_size (b : access constant gsl_block_uchar) return size_t  -- /usr/include/gsl/gsl_block_uchar.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uchar_size";

   function gsl_block_uchar_data (arg1 : access constant gsl_block_uchar) return access unsigned_char  -- /usr/include/gsl/gsl_block_uchar.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uchar_data";

end GSL.Low_Level.gsl_gsl_block_uchar_h;
