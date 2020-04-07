pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_multiset_h is

  -- multiset/gsl_multiset.h
  -- * based on combination/gsl_combination.h by Szymon Jaroszewicz
  -- * based on permutation/gsl_permutation.h by Brian Gough
  -- *
  -- * Copyright (C) 2009 Rhys Ulerich
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

   type gsl_multiset_struct is record
      n : aliased size_t;  -- /usr/include/gsl/gsl_multiset.h:45
      k : aliased size_t;  -- /usr/include/gsl/gsl_multiset.h:46
      data : access size_t;  -- /usr/include/gsl/gsl_multiset.h:47
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multiset.h:43

   subtype gsl_multiset is gsl_multiset_struct;  -- /usr/include/gsl/gsl_multiset.h:50

   function gsl_multiset_alloc (arg1 : size_t; arg2 : size_t) return access gsl_multiset  -- /usr/include/gsl/gsl_multiset.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiset_alloc";

   function gsl_multiset_calloc (arg1 : size_t; arg2 : size_t) return access gsl_multiset  -- /usr/include/gsl/gsl_multiset.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiset_calloc";

   procedure gsl_multiset_init_first (c : access gsl_multiset)  -- /usr/include/gsl/gsl_multiset.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiset_init_first";

   procedure gsl_multiset_init_last (c : access gsl_multiset)  -- /usr/include/gsl/gsl_multiset.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiset_init_last";

   procedure gsl_multiset_free (c : access gsl_multiset)  -- /usr/include/gsl/gsl_multiset.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiset_free";

   function gsl_multiset_memcpy (dest : access gsl_multiset; src : access constant gsl_multiset) return int  -- /usr/include/gsl/gsl_multiset.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiset_memcpy";

   function gsl_multiset_fread (stream : Interfaces.C_Streams.FILEs; c : access gsl_multiset) return int  -- /usr/include/gsl/gsl_multiset.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiset_fread";

   function gsl_multiset_fwrite (stream : Interfaces.C_Streams.FILEs; c : access constant gsl_multiset) return int  -- /usr/include/gsl/gsl_multiset.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiset_fwrite";

   function gsl_multiset_fscanf (stream : Interfaces.C_Streams.FILEs; c : access gsl_multiset) return int  -- /usr/include/gsl/gsl_multiset.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiset_fscanf";

   function gsl_multiset_fprintf
     (stream : Interfaces.C_Streams.FILEs;
      c : access constant gsl_multiset;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_multiset.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiset_fprintf";

   function gsl_multiset_n (c : access constant gsl_multiset) return size_t  -- /usr/include/gsl/gsl_multiset.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiset_n";

   function gsl_multiset_k (c : access constant gsl_multiset) return size_t  -- /usr/include/gsl/gsl_multiset.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiset_k";

   function gsl_multiset_data (arg1 : access constant gsl_multiset) return access size_t  -- /usr/include/gsl/gsl_multiset.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiset_data";

   function gsl_multiset_valid (c : access gsl_multiset) return int  -- /usr/include/gsl/gsl_multiset.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiset_valid";

   function gsl_multiset_next (c : access gsl_multiset) return int  -- /usr/include/gsl/gsl_multiset.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiset_next";

   function gsl_multiset_prev (c : access gsl_multiset) return int  -- /usr/include/gsl/gsl_multiset.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiset_prev";

   function gsl_multiset_get (c : access constant gsl_multiset; i : size_t) return size_t  -- /usr/include/gsl/gsl_multiset.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiset_get";

  -- size_t is unsigned, can't be negative  
end GSL.Low_Level.gsl_gsl_multiset_h;
