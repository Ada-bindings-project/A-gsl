pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_combination_h is

  -- combination/gsl_combination.h
  -- * based on permutation/gsl_permutation.h by Brian Gough
  -- * 
  -- * Copyright (C) 2001 Szymon Jaroszewicz
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

   type gsl_combination_struct is record
      n : aliased size_t;  -- /usr/include/gsl/gsl_combination.h:44
      k : aliased size_t;  -- /usr/include/gsl/gsl_combination.h:45
      data : access size_t;  -- /usr/include/gsl/gsl_combination.h:46
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_combination.h:42

   subtype gsl_combination is gsl_combination_struct;  -- /usr/include/gsl/gsl_combination.h:49

   function gsl_combination_alloc (arg1 : size_t; arg2 : size_t) return access gsl_combination  -- /usr/include/gsl/gsl_combination.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_combination_alloc";

   function gsl_combination_calloc (arg1 : size_t; arg2 : size_t) return access gsl_combination  -- /usr/include/gsl/gsl_combination.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_combination_calloc";

   procedure gsl_combination_init_first (c : access gsl_combination)  -- /usr/include/gsl/gsl_combination.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_combination_init_first";

   procedure gsl_combination_init_last (c : access gsl_combination)  -- /usr/include/gsl/gsl_combination.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_combination_init_last";

   procedure gsl_combination_free (c : access gsl_combination)  -- /usr/include/gsl/gsl_combination.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_combination_free";

   function gsl_combination_memcpy (dest : access gsl_combination; src : access constant gsl_combination) return int  -- /usr/include/gsl/gsl_combination.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_combination_memcpy";

   function gsl_combination_fread (stream : access Interfaces.C_Streams.FILEs; c : access gsl_combination) return int  -- /usr/include/gsl/gsl_combination.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_combination_fread";

   function gsl_combination_fwrite (stream : access Interfaces.C_Streams.FILEs; c : access constant gsl_combination) return int  -- /usr/include/gsl/gsl_combination.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_combination_fwrite";

   function gsl_combination_fscanf (stream : access Interfaces.C_Streams.FILEs; c : access gsl_combination) return int  -- /usr/include/gsl/gsl_combination.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_combination_fscanf";

   function gsl_combination_fprintf
     (stream : access Interfaces.C_Streams.FILEs;
      c : access constant gsl_combination;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_combination.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_combination_fprintf";

   function gsl_combination_n (c : access constant gsl_combination) return size_t  -- /usr/include/gsl/gsl_combination.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_combination_n";

   function gsl_combination_k (c : access constant gsl_combination) return size_t  -- /usr/include/gsl/gsl_combination.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_combination_k";

   function gsl_combination_data (arg1 : access constant gsl_combination) return access size_t  -- /usr/include/gsl/gsl_combination.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_combination_data";

   function gsl_combination_valid (c : access gsl_combination) return int  -- /usr/include/gsl/gsl_combination.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_combination_valid";

   function gsl_combination_next (c : access gsl_combination) return int  -- /usr/include/gsl/gsl_combination.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_combination_next";

   function gsl_combination_prev (c : access gsl_combination) return int  -- /usr/include/gsl/gsl_combination.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_combination_prev";

   function gsl_combination_get (c : access constant gsl_combination; i : size_t) return size_t  -- /usr/include/gsl/gsl_combination.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_combination_get";

  -- size_t is unsigned, can't be negative  
end GSL.Low_Level.gsl_gsl_combination_h;
