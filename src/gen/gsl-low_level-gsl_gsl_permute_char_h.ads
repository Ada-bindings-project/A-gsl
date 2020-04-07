pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_permute_char_h is

   function gsl_permute_char
     (p : access size_t;
      data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_permute_char.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_char";

   function gsl_permute_char_inverse
     (p : access size_t;
      data : Interfaces.C.Strings.chars_ptr;
      stride : size_t;
      n : size_t) return int  -- /usr/include/gsl/gsl_permute_char.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_char_inverse";

end GSL.Low_Level.gsl_gsl_permute_char_h;
