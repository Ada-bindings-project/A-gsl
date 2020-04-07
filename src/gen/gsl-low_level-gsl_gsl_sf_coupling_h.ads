pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GSL.Low_Level.gsl_gsl_sf_result_h;

package GSL.Low_Level.gsl_gsl_sf_coupling_h is

   function gsl_sf_coupling_3j_e
     (two_ja : int;
      two_jb : int;
      two_jc : int;
      two_ma : int;
      two_mb : int;
      two_mc : int;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_coupling.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coupling_3j_e";

   function gsl_sf_coupling_3j
     (two_ja : int;
      two_jb : int;
      two_jc : int;
      two_ma : int;
      two_mb : int;
      two_mc : int) return double  -- /usr/include/gsl/gsl_sf_coupling.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coupling_3j";

   function gsl_sf_coupling_6j_e
     (two_ja : int;
      two_jb : int;
      two_jc : int;
      two_jd : int;
      two_je : int;
      two_jf : int;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_coupling.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coupling_6j_e";

   function gsl_sf_coupling_6j
     (two_ja : int;
      two_jb : int;
      two_jc : int;
      two_jd : int;
      two_je : int;
      two_jf : int) return double  -- /usr/include/gsl/gsl_sf_coupling.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coupling_6j";

   function gsl_sf_coupling_RacahW_e
     (two_ja : int;
      two_jb : int;
      two_jc : int;
      two_jd : int;
      two_je : int;
      two_jf : int;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_coupling.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coupling_RacahW_e";

   function gsl_sf_coupling_RacahW
     (two_ja : int;
      two_jb : int;
      two_jc : int;
      two_jd : int;
      two_je : int;
      two_jf : int) return double  -- /usr/include/gsl/gsl_sf_coupling.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coupling_RacahW";

   function gsl_sf_coupling_9j_e
     (two_ja : int;
      two_jb : int;
      two_jc : int;
      two_jd : int;
      two_je : int;
      two_jf : int;
      two_jg : int;
      two_jh : int;
      two_ji : int;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_coupling.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coupling_9j_e";

   function gsl_sf_coupling_9j
     (two_ja : int;
      two_jb : int;
      two_jc : int;
      two_jd : int;
      two_je : int;
      two_jf : int;
      two_jg : int;
      two_jh : int;
      two_ji : int) return double  -- /usr/include/gsl/gsl_sf_coupling.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coupling_9j";

   function gsl_sf_coupling_6j_INCORRECT_e
     (two_ja : int;
      two_jb : int;
      two_jc : int;
      two_jd : int;
      two_je : int;
      two_jf : int;
      result : access GSL.Low_Level.gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_coupling.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coupling_6j_INCORRECT_e";

   function gsl_sf_coupling_6j_INCORRECT
     (two_ja : int;
      two_jb : int;
      two_jc : int;
      two_jd : int;
      two_je : int;
      two_jf : int) return double  -- /usr/include/gsl/gsl_sf_coupling.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_coupling_6j_INCORRECT";

end GSL.Low_Level.gsl_gsl_sf_coupling_h;
