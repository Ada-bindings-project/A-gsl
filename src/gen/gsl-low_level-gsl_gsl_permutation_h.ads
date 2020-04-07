pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_permutation_h is

   type gsl_permutation_struct is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_permutation.h:43
      data : access size_t;  -- /usr/include/gsl/gsl_permutation.h:44
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_permutation.h:41

   subtype gsl_permutation is gsl_permutation_struct;  -- /usr/include/gsl/gsl_permutation.h:47

   function gsl_permutation_alloc (arg1 : size_t) return access gsl_permutation  -- /usr/include/gsl/gsl_permutation.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_alloc";

   function gsl_permutation_calloc (arg1 : size_t) return access gsl_permutation  -- /usr/include/gsl/gsl_permutation.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_calloc";

   procedure gsl_permutation_init (p : access gsl_permutation)  -- /usr/include/gsl/gsl_permutation.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_init";

   procedure gsl_permutation_free (p : access gsl_permutation)  -- /usr/include/gsl/gsl_permutation.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_free";

   function gsl_permutation_memcpy (dest : access gsl_permutation; src : access constant gsl_permutation) return int  -- /usr/include/gsl/gsl_permutation.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_memcpy";

   function gsl_permutation_fread (stream : access Interfaces.C_Streams.FILEs; p : access gsl_permutation) return int  -- /usr/include/gsl/gsl_permutation.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_fread";

   function gsl_permutation_fwrite (stream : access Interfaces.C_Streams.FILEs; p : access constant gsl_permutation) return int  -- /usr/include/gsl/gsl_permutation.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_fwrite";

   function gsl_permutation_fscanf (stream : access Interfaces.C_Streams.FILEs; p : access gsl_permutation) return int  -- /usr/include/gsl/gsl_permutation.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_fscanf";

   function gsl_permutation_fprintf
     (stream : access Interfaces.C_Streams.FILEs;
      p : access constant gsl_permutation;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_permutation.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_fprintf";

   function gsl_permutation_size (p : access constant gsl_permutation) return size_t  -- /usr/include/gsl/gsl_permutation.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_size";

   function gsl_permutation_data (arg1 : access constant gsl_permutation) return access size_t  -- /usr/include/gsl/gsl_permutation.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_data";

   function gsl_permutation_swap
     (p : access gsl_permutation;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_permutation.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_swap";

   function gsl_permutation_valid (p : access constant gsl_permutation) return int  -- /usr/include/gsl/gsl_permutation.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_valid";

   procedure gsl_permutation_reverse (p : access gsl_permutation)  -- /usr/include/gsl/gsl_permutation.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_reverse";

   function gsl_permutation_inverse (inv : access gsl_permutation; p : access constant gsl_permutation) return int  -- /usr/include/gsl/gsl_permutation.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_inverse";

   function gsl_permutation_next (p : access gsl_permutation) return int  -- /usr/include/gsl/gsl_permutation.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_next";

   function gsl_permutation_prev (p : access gsl_permutation) return int  -- /usr/include/gsl/gsl_permutation.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_prev";

   function gsl_permutation_mul
     (p : access gsl_permutation;
      pa : access constant gsl_permutation;
      pb : access constant gsl_permutation) return int  -- /usr/include/gsl/gsl_permutation.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_mul";

   function gsl_permutation_linear_to_canonical (q : access gsl_permutation; p : access constant gsl_permutation) return int  -- /usr/include/gsl/gsl_permutation.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_linear_to_canonical";

   function gsl_permutation_canonical_to_linear (p : access gsl_permutation; q : access constant gsl_permutation) return int  -- /usr/include/gsl/gsl_permutation.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_canonical_to_linear";

   function gsl_permutation_inversions (p : access constant gsl_permutation) return size_t  -- /usr/include/gsl/gsl_permutation.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_inversions";

   function gsl_permutation_linear_cycles (p : access constant gsl_permutation) return size_t  -- /usr/include/gsl/gsl_permutation.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_linear_cycles";

   function gsl_permutation_canonical_cycles (q : access constant gsl_permutation) return size_t  -- /usr/include/gsl/gsl_permutation.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_canonical_cycles";

   function gsl_permutation_get (p : access constant gsl_permutation; i : size_t) return size_t  -- /usr/include/gsl/gsl_permutation.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permutation_get";

end GSL.Low_Level.gsl_gsl_permutation_h;
