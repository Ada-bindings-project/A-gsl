pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with System;

package GSL.Low_Level.gsl_gsl_qrng_h is

   type gsl_qrng_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_qrng.h:30
      max_dimension : aliased unsigned;  -- /usr/include/gsl/gsl_qrng.h:31
      state_size : access function (arg1 : unsigned) return size_t;  -- /usr/include/gsl/gsl_qrng.h:32
      init_state : access function (arg1 : System.Address; arg2 : unsigned) return int;  -- /usr/include/gsl/gsl_qrng.h:33
      get : access function
           (arg1 : System.Address;
            arg2 : unsigned;
            arg3 : access double) return int;  -- /usr/include/gsl/gsl_qrng.h:34
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_qrng.h:36

   type gsl_qrng is record
      c_type : access constant gsl_qrng_type;  -- /usr/include/gsl/gsl_qrng.h:44
      dimension : aliased unsigned;  -- /usr/include/gsl/gsl_qrng.h:45
      state_size : aliased size_t;  -- /usr/include/gsl/gsl_qrng.h:46
      state : System.Address;  -- /usr/include/gsl/gsl_qrng.h:47
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_qrng.h:49

   gsl_qrng_niederreiter_2 : access constant gsl_qrng_type  -- /usr/include/gsl/gsl_qrng.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_qrng_niederreiter_2";

   gsl_qrng_sobol : access constant gsl_qrng_type  -- /usr/include/gsl/gsl_qrng.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_qrng_sobol";

   gsl_qrng_halton : access constant gsl_qrng_type  -- /usr/include/gsl/gsl_qrng.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_qrng_halton";

   gsl_qrng_reversehalton : access constant gsl_qrng_type  -- /usr/include/gsl/gsl_qrng.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_qrng_reversehalton";

   function gsl_qrng_alloc (arg1 : access constant gsl_qrng_type; arg2 : unsigned) return access gsl_qrng  -- /usr/include/gsl/gsl_qrng.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_qrng_alloc";

   function gsl_qrng_memcpy (dest : access gsl_qrng; src : access constant gsl_qrng) return int  -- /usr/include/gsl/gsl_qrng.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_qrng_memcpy";

   function gsl_qrng_clone (arg1 : access constant gsl_qrng) return access gsl_qrng  -- /usr/include/gsl/gsl_qrng.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_qrng_clone";

   procedure gsl_qrng_free (q : access gsl_qrng)  -- /usr/include/gsl/gsl_qrng.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_qrng_free";

   procedure gsl_qrng_init (q : access gsl_qrng)  -- /usr/include/gsl/gsl_qrng.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_qrng_init";

   function gsl_qrng_name (arg1 : access constant gsl_qrng) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_qrng.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_qrng_name";

   function gsl_qrng_size (q : access constant gsl_qrng) return size_t  -- /usr/include/gsl/gsl_qrng.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_qrng_size";

   function gsl_qrng_state (arg1 : access constant gsl_qrng) return System.Address  -- /usr/include/gsl/gsl_qrng.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_qrng_state";

   function gsl_qrng_get (q : access constant gsl_qrng; x : access double) return int  -- /usr/include/gsl/gsl_qrng.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_qrng_get";

end GSL.Low_Level.gsl_gsl_qrng_h;
