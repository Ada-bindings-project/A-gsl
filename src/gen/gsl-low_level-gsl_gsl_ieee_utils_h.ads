pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_ieee_utils_h is

  -- ieee-utils/gsl_ieee_utils.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2007 Brian Gough
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

  -- Actual bits are 0..22, element 23 is \0  
   subtype gsl_ieee_float_rep_array8276 is Interfaces.C.char_array (0 .. 23);
   type gsl_ieee_float_rep is record
      sign : aliased int;  -- /usr/include/gsl/gsl_ieee_utils.h:45
      mantissa : aliased gsl_ieee_float_rep_array8276;  -- /usr/include/gsl/gsl_ieee_utils.h:46
      exponent : aliased int;  -- /usr/include/gsl/gsl_ieee_utils.h:47
      c_type : aliased int;  -- /usr/include/gsl/gsl_ieee_utils.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_ieee_utils.h:49

  -- Actual bits are 0..51, element 52 is \0  
   subtype gsl_ieee_double_rep_array8280 is Interfaces.C.char_array (0 .. 52);
   type gsl_ieee_double_rep is record
      sign : aliased int;  -- /usr/include/gsl/gsl_ieee_utils.h:52
      mantissa : aliased gsl_ieee_double_rep_array8280;  -- /usr/include/gsl/gsl_ieee_utils.h:53
      exponent : aliased int;  -- /usr/include/gsl/gsl_ieee_utils.h:54
      c_type : aliased int;  -- /usr/include/gsl/gsl_ieee_utils.h:55
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_ieee_utils.h:56

   procedure gsl_ieee_printf_float (x : access float)  -- /usr/include/gsl/gsl_ieee_utils.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ieee_printf_float";

   procedure gsl_ieee_printf_double (x : access double)  -- /usr/include/gsl/gsl_ieee_utils.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ieee_printf_double";

   procedure gsl_ieee_fprintf_float (stream : Interfaces.C_Streams.FILEs; x : access float)  -- /usr/include/gsl/gsl_ieee_utils.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ieee_fprintf_float";

   procedure gsl_ieee_fprintf_double (stream : Interfaces.C_Streams.FILEs; x : access double)  -- /usr/include/gsl/gsl_ieee_utils.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ieee_fprintf_double";

   procedure gsl_ieee_float_to_rep (x : access float; r : access gsl_ieee_float_rep)  -- /usr/include/gsl/gsl_ieee_utils.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ieee_float_to_rep";

   procedure gsl_ieee_double_to_rep (x : access double; r : access gsl_ieee_double_rep)  -- /usr/include/gsl/gsl_ieee_utils.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ieee_double_to_rep";

   procedure gsl_ieee_env_setup  -- /usr/include/gsl/gsl_ieee_utils.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ieee_env_setup";

   function gsl_ieee_read_mode_string
     (description : Interfaces.C.Strings.chars_ptr;
      precision : access int;
      rounding : access int;
      exception_mask : access int) return int  -- /usr/include/gsl/gsl_ieee_utils.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ieee_read_mode_string";

   function gsl_ieee_set_mode
     (precision : int;
      rounding : int;
      exception_mask : int) return int  -- /usr/include/gsl/gsl_ieee_utils.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ieee_set_mode";

end GSL.Low_Level.gsl_gsl_ieee_utils_h;
