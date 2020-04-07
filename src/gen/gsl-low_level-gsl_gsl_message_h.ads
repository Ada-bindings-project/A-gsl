pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_message_h is

   GSL_MESSAGE_MASK : constant := 16#ffffffff#;  --  /usr/include/gsl/gsl_message.h:48
   --  arg-macro: procedure GSL_MESSAGE (message, mask)
   --    do { if (mask and GSL_MESSAGE_MASK) gsl_message (message, __FILE__, __LINE__, mask) ; } while (0)

   procedure gsl_message
     (message : Interfaces.C.Strings.chars_ptr;
      file : Interfaces.C.Strings.chars_ptr;
      line : int;
      mask : unsigned)  -- /usr/include/gsl/gsl_message.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_message";

   gsl_message_mask_v : aliased unsigned  -- /usr/include/gsl/gsl_message.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_message_mask";

end GSL.Low_Level.gsl_gsl_message_h;
