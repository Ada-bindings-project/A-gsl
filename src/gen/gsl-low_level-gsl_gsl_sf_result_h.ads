pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package GSL.Low_Level.gsl_gsl_sf_result_h is

   --  arg-macro: procedure GSL_SF_RESULT_SET (r, v, e)
   --    do { (r).val:=(v); (r).err:=(e); } while(0)
   type gsl_sf_result_struct is record
      val : aliased double;  -- /usr/include/gsl/gsl_sf_result.h:38
      err : aliased double;  -- /usr/include/gsl/gsl_sf_result.h:39
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_sf_result.h:37

   subtype gsl_sf_result is gsl_sf_result_struct;  -- /usr/include/gsl/gsl_sf_result.h:41

   type gsl_sf_result_e10_struct is record
      val : aliased double;  -- /usr/include/gsl/gsl_sf_result.h:47
      err : aliased double;  -- /usr/include/gsl/gsl_sf_result.h:48
      e10 : aliased int;  -- /usr/include/gsl/gsl_sf_result.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_sf_result.h:46

   subtype gsl_sf_result_e10 is gsl_sf_result_e10_struct;  -- /usr/include/gsl/gsl_sf_result.h:51

   function gsl_sf_result_smash_e (re : access constant gsl_sf_result_e10; r : access gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_result.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_result_smash_e";

end GSL.Low_Level.gsl_gsl_sf_result_h;
