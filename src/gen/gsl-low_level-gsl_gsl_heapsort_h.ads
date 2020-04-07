pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with System;


package GSL.Low_Level.gsl_gsl_heapsort_h is

  -- sort/gsl_heapsort.h
  -- * 
  -- * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2007 Thomas Walter, Brian Gough
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

   type gsl_comparison_fn_t is access function (arg1 : System.Address; arg2 : System.Address) return int
   with Convention => C;  -- /usr/include/gsl/gsl_heapsort.h:37

   procedure gsl_heapsort
     (c_array : System.Address;
      count : size_t;
      size : size_t;
      compare : gsl_comparison_fn_t)  -- /usr/include/gsl/gsl_heapsort.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_heapsort";

   function gsl_heapsort_index
     (p : access size_t;
      c_array : System.Address;
      count : size_t;
      size : size_t;
      compare : gsl_comparison_fn_t) return int  -- /usr/include/gsl/gsl_heapsort.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_heapsort_index";

end GSL.Low_Level.gsl_gsl_heapsort_h;
