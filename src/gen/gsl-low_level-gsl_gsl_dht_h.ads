pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_dht_h is

   type gsl_dht_struct is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_dht.h:39
      nu : aliased double;  -- /usr/include/gsl/gsl_dht.h:40
      xmax : aliased double;  -- /usr/include/gsl/gsl_dht.h:41
      kmax : aliased double;  -- /usr/include/gsl/gsl_dht.h:42
      j : access double;  -- /usr/include/gsl/gsl_dht.h:43
      Jjj : access double;  -- /usr/include/gsl/gsl_dht.h:44
      J2 : access double;  -- /usr/include/gsl/gsl_dht.h:45
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_dht.h:38

   subtype gsl_dht is gsl_dht_struct;  -- /usr/include/gsl/gsl_dht.h:47

   function gsl_dht_alloc (arg1 : size_t) return access gsl_dht  -- /usr/include/gsl/gsl_dht.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_alloc";

   function gsl_dht_new
     (arg1 : size_t;
      arg2 : double;
      arg3 : double) return access gsl_dht  -- /usr/include/gsl/gsl_dht.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_new";

   function gsl_dht_init
     (t : access gsl_dht;
      nu : double;
      xmax : double) return int  -- /usr/include/gsl/gsl_dht.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_init";

   function gsl_dht_x_sample (t : access constant gsl_dht; n : int) return double  -- /usr/include/gsl/gsl_dht.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_x_sample";

   function gsl_dht_k_sample (t : access constant gsl_dht; n : int) return double  -- /usr/include/gsl/gsl_dht.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_k_sample";

   procedure gsl_dht_free (t : access gsl_dht)  -- /usr/include/gsl/gsl_dht.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_free";

   function gsl_dht_apply
     (t : access constant gsl_dht;
      f_in : access double;
      f_out : access double) return int  -- /usr/include/gsl/gsl_dht.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_apply";

end GSL.Low_Level.gsl_gsl_dht_h;
