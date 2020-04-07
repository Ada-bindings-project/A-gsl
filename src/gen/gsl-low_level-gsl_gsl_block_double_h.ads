pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Low_Level.gsl_gsl_block_double_h is

  -- block/gsl_block_double.h
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

   type gsl_block_struct is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_block_double.h:40
      data : access double;  -- /usr/include/gsl/gsl_block_double.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_block_double.h:38

   subtype gsl_block is gsl_block_struct;  -- /usr/include/gsl/gsl_block_double.h:44

   function gsl_block_alloc (arg1 : size_t) return access gsl_block  -- /usr/include/gsl/gsl_block_double.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_alloc";

   function gsl_block_calloc (arg1 : size_t) return access gsl_block  -- /usr/include/gsl/gsl_block_double.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_calloc";

   procedure gsl_block_free (b : access gsl_block)  -- /usr/include/gsl/gsl_block_double.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_free";

   function gsl_block_fread (stream : Interfaces.C_Streams.FILEs; b : access gsl_block) return int  -- /usr/include/gsl/gsl_block_double.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_fread";

   function gsl_block_fwrite (stream : Interfaces.C_Streams.FILEs; b : access constant gsl_block) return int  -- /usr/include/gsl/gsl_block_double.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_fwrite";

   function gsl_block_fscanf (stream : Interfaces.C_Streams.FILEs; b : access gsl_block) return int  -- /usr/include/gsl/gsl_block_double.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_fscanf";

   function gsl_block_fprintf
     (stream : Interfaces.C_Streams.FILEs;
      b : access constant gsl_block;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_double.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_fprintf";

   function gsl_block_raw_fread
     (stream : Interfaces.C_Streams.FILEs;
      b : access double;
      n : size_t;
      stride : size_t) return int  -- /usr/include/gsl/gsl_block_double.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_raw_fread";

   function gsl_block_raw_fwrite
     (stream : Interfaces.C_Streams.FILEs;
      b : access double;
      n : size_t;
      stride : size_t) return int  -- /usr/include/gsl/gsl_block_double.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_raw_fwrite";

   function gsl_block_raw_fscanf
     (stream : Interfaces.C_Streams.FILEs;
      b : access double;
      n : size_t;
      stride : size_t) return int  -- /usr/include/gsl/gsl_block_double.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_raw_fscanf";

   function gsl_block_raw_fprintf
     (stream : Interfaces.C_Streams.FILEs;
      b : access double;
      n : size_t;
      stride : size_t;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_double.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_raw_fprintf";

   function gsl_block_size (b : access constant gsl_block) return size_t  -- /usr/include/gsl/gsl_block_double.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_size";

   function gsl_block_data (arg1 : access constant gsl_block) return access double  -- /usr/include/gsl/gsl_block_double.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_data";

end GSL.Low_Level.gsl_gsl_block_double_h;
