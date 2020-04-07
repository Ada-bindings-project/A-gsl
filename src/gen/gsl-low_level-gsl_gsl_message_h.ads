pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_message_h is

   GSL_MESSAGE_MASK : constant := 16#ffffffff#;  --  /usr/include/gsl/gsl_message.h:48
   --  arg-macro: procedure GSL_MESSAGE (message, mask)
   --    do { if (mask and GSL_MESSAGE_MASK) gsl_message (message, __FILE__, __LINE__, mask) ; } while (0)

  -- err/gsl_message.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2007 Gerard Jungman, Brian Gough
  -- * 
  -- * This program is free software; you can redistribute it and/or modify
  -- * it under the terms of the GNU General Public License as published by
  -- * the Free Software Foundation; either version 3 of the License, or (at
  -- * your option) any later version.
  -- * 
  -- * This program is distributed in the hope that it will be useful, but
  -- * WITHOUT ANY WARRANTY; without even the implied warranty of
  -- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  -- * General Public License for more details.
  -- * 
  -- * You should have received a copy of the GNU General Public License
  -- * along with this program; if not, write to the Free Software
  -- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
  --  

  -- Provide a general messaging service for client use.  Messages can
  -- * be selectively turned off at compile time by defining an
  -- * appropriate message mask. Client code which uses the GSL_MESSAGE()
  -- * macro must provide a mask which is or'ed with the GSL_MESSAGE_MASK.
  -- *
  -- * The messaging service can be completely turned off
  -- * by defining GSL_MESSAGING_OFF.   

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

  -- Provide some symolic masks for client ease of use.  
end GSL.Low_Level.gsl_gsl_message_h;
