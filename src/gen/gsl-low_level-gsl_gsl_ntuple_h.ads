pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C_Streams;
with System;

with Interfaces.C.Strings;
limited with GSL.Low_Level.gsl_gsl_histogram_h;

package GSL.Low_Level.gsl_gsl_ntuple_h is

  -- histogram/ntuple.h
  -- * 
  -- * Copyright (C) 2000 Simone Piccardi
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
  -- *
  --  

  -- Jan/2001 Modified by Brian Gough. Minor changes for GSL  
   type gsl_ntuple is record
      the_file : Interfaces.C_Streams.FILEs;  -- /usr/include/gsl/gsl_ntuple.h:44
      ntuple_data : System.Address;  -- /usr/include/gsl/gsl_ntuple.h:45
      size : aliased size_t;  -- /usr/include/gsl/gsl_ntuple.h:46
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_ntuple.h:47

   type gsl_ntuple_select_fn is record
      c_function : access function (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/gsl/gsl_ntuple.h:50
      params : System.Address;  -- /usr/include/gsl/gsl_ntuple.h:51
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_ntuple.h:52

   type gsl_ntuple_value_fn is record
      c_function : access function (arg1 : System.Address; arg2 : System.Address) return double;  -- /usr/include/gsl/gsl_ntuple.h:55
      params : System.Address;  -- /usr/include/gsl/gsl_ntuple.h:56
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_ntuple.h:57

   function gsl_ntuple_open
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : size_t) return access gsl_ntuple  -- /usr/include/gsl/gsl_ntuple.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ntuple_open";

   function gsl_ntuple_create
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : size_t) return access gsl_ntuple  -- /usr/include/gsl/gsl_ntuple.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ntuple_create";

   function gsl_ntuple_write (ntuple : access gsl_ntuple) return int  -- /usr/include/gsl/gsl_ntuple.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ntuple_write";

   function gsl_ntuple_read (ntuple : access gsl_ntuple) return int  -- /usr/include/gsl/gsl_ntuple.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ntuple_read";

  -- synonym for write  
   function gsl_ntuple_bookdata (ntuple : access gsl_ntuple) return int  -- /usr/include/gsl/gsl_ntuple.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ntuple_bookdata";

   function gsl_ntuple_project
     (h : access GSL.Low_Level.gsl_gsl_histogram_h.gsl_histogram;
      ntuple : access gsl_ntuple;
      value_func : access gsl_ntuple_value_fn;
      select_func : access gsl_ntuple_select_fn) return int  -- /usr/include/gsl/gsl_ntuple.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ntuple_project";

   function gsl_ntuple_close (ntuple : access gsl_ntuple) return int  -- /usr/include/gsl/gsl_ntuple.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ntuple_close";

end GSL.Low_Level.gsl_gsl_ntuple_h;
