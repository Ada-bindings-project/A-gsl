pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_test_h is

  -- err/gsl_test.h
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

   procedure gsl_test (status : int; test_description : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /usr/include/gsl/gsl_test.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_test";

   procedure gsl_test_rel
     (result : double;
      expected : double;
      relative_error : double;
      test_description : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /usr/include/gsl/gsl_test.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_test_rel";

   procedure gsl_test_abs
     (result : double;
      expected : double;
      absolute_error : double;
      test_description : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /usr/include/gsl/gsl_test.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_test_abs";

   procedure gsl_test_factor
     (result : double;
      expected : double;
      factor : double;
      test_description : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /usr/include/gsl/gsl_test.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_test_factor";

   procedure gsl_test_int
     (result : int;
      expected : int;
      test_description : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /usr/include/gsl/gsl_test.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_test_int";

   procedure gsl_test_str
     (result : Interfaces.C.Strings.chars_ptr;
      expected : Interfaces.C.Strings.chars_ptr;
      test_description : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /usr/include/gsl/gsl_test.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_test_str";

   procedure gsl_test_verbose (verbose : int)  -- /usr/include/gsl/gsl_test.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_test_verbose";

   function gsl_test_summary return int  -- /usr/include/gsl/gsl_test.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_test_summary";

end GSL.Low_Level.gsl_gsl_test_h;
