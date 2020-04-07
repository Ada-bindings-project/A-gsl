pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.gsl_gsl_monte_h;
with GSL.Low_Level.gsl_gsl_rng_h;

package GSL.Low_Level.gsl_gsl_monte_plain_h is

  -- monte/gsl_monte_plain.h
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

  -- Plain Monte-Carlo.  
  -- Author: MJB  
   type gsl_monte_plain_state is record
      dim : aliased size_t;  -- /usr/include/gsl/gsl_monte_plain.h:44
      x : access double;  -- /usr/include/gsl/gsl_monte_plain.h:45
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_monte_plain.h:46

   function gsl_monte_plain_integrate
     (f : access constant GSL.Low_Level.gsl_gsl_monte_h.gsl_monte_function;
      xl : access double;
      xu : access double;
      dim : size_t;
      calls : size_t;
      r : access GSL.Low_Level.gsl_gsl_rng_h.gsl_rng;
      state : access gsl_monte_plain_state;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_monte_plain.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_plain_integrate";

   function gsl_monte_plain_alloc (arg1 : size_t) return access gsl_monte_plain_state  -- /usr/include/gsl/gsl_monte_plain.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_plain_alloc";

   function gsl_monte_plain_init (state : access gsl_monte_plain_state) return int  -- /usr/include/gsl/gsl_monte_plain.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_plain_init";

   procedure gsl_monte_plain_free (state : access gsl_monte_plain_state)  -- /usr/include/gsl/gsl_monte_plain.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_plain_free";

end GSL.Low_Level.gsl_gsl_monte_plain_h;
