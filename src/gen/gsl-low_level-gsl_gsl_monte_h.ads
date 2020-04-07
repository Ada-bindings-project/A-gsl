pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with System;

package GSL.Low_Level.gsl_gsl_monte_h is

   --  arg-macro: function GSL_MONTE_FN_EVAL (F, x)
   --    return *((F).f))(x,(F).dim,(F).params;
  -- monte/gsl_monte.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000 Michael Booth
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

  -- Some things common to all the Monte-Carlo implementations  
  -- Author: MJB  
  -- Hide the function type in a typedef so that we can use it in all our
  --   integration functions, and make it easy to change things.
  -- 

   type gsl_monte_function_struct is record
      f : access function
           (arg1 : access double;
            arg2 : size_t;
            arg3 : System.Address) return double;  -- /usr/include/gsl/gsl_monte.h:43
      dim : aliased size_t;  -- /usr/include/gsl/gsl_monte.h:44
      params : System.Address;  -- /usr/include/gsl/gsl_monte.h:45
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_monte.h:42

   subtype gsl_monte_function is gsl_monte_function_struct;  -- /usr/include/gsl/gsl_monte.h:48

end GSL.Low_Level.gsl_gsl_monte_h;
