pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;


package GSL.Low_Level.gsl_gsl_permute_uchar_h is

   function gsl_permute_uchar
     (p : access size_t;
      data : access unsigned_char;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_permute_uchar.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_uchar";

   function gsl_permute_uchar_inverse
     (p : access size_t;
      data : access unsigned_char;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_permute_uchar.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_uchar_inverse";

end GSL.Low_Level.gsl_gsl_permute_uchar_h;
