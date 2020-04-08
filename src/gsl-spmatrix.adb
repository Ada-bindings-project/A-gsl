pragma Ada_2012;
package body GSL.Spmatrix is

   --------
   -- Nz --
   --------

   function Nz (Self : Gsl_Spmatrix) return Natural is
   begin
      pragma Compile_Time_Warning (Standard.True, "Nz unimplemented");
      return raise Program_Error with "Unimplemented function Nz";
   end Nz;

   -----------
   -- Size1 --
   -----------

   function Size1 (Self : Gsl_Spmatrix) return Natural is
   begin
      pragma Compile_Time_Warning (Standard.True, "Size1 unimplemented");
      return raise Program_Error with "Unimplemented function Size1";
   end Size1;

   -----------
   -- Size2 --
   -----------

   function Size2 (Self : Gsl_Spmatrix) return Natural is
   begin
      pragma Compile_Time_Warning (Standard.True, "Size2 unimplemented");
      return raise Program_Error with "Unimplemented function Size2";
   end Size2;

   -------
   -- P --
   -------

   function P (Self : Gsl_Spmatrix; Index : Natural) return Natural is
   begin
      pragma Compile_Time_Warning (Standard.True, "P unimplemented");
      return raise Program_Error with "Unimplemented function P";
   end P;

   ----------
   -- Data --
   ----------

   function Data (Self : Gsl_Spmatrix; Index : Natural) return Long_Float is
   begin
      pragma Compile_Time_Warning (Standard.True, "Data unimplemented");
      return raise Program_Error with "Unimplemented function Data";
   end Data;

   -------
   -- I --
   -------

   function I (Self : Gsl_Spmatrix; Index : Natural) return Long_Float is
   begin
      pragma Compile_Time_Warning (Standard.True, "I unimplemented");
      return raise Program_Error with "Unimplemented function I";
   end I;

   -------------
   -- Fprintf --
   -------------

   procedure Fprintf
     (Self   : Gsl_Spmatrix; Stream : Interfaces.C_Streams.FILEs;
      Format : String)
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Fprintf unimplemented");
      raise Program_Error with "Unimplemented procedure Fprintf";
   end Fprintf;

   ------------------------------
   -- Compressed_Column_Format --
   ------------------------------

   function Compressed_Column_Format (Self : Gsl_Spmatrix) return Gsl_Spmatrix
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Compressed_Column_Format unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Compressed_Column_Format";
   end Compressed_Column_Format;

   ---------------------------
   -- Compressed_Row_Format --
   ---------------------------

   function Compressed_Row_Format (Self : Gsl_Spmatrix) return Gsl_Spmatrix is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Compressed_Row_Format unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Compressed_Row_Format";
   end Compressed_Row_Format;

   ------------------------
   -- Constant_Reference --
   ------------------------

   function Constant_Reference
     (Container : aliased Gsl_Spmatrix; Row : Natural; Column : Natural)
      return Constant_Reference_Type
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Constant_Reference unimplemented");
      return
        raise Program_Error with "Unimplemented function Constant_Reference";
   end Constant_Reference;

   ---------------
   -- Reference --
   ---------------

   function Reference
     (Container : aliased in out Gsl_Spmatrix; Row : Natural; Column : Natural)
      return Reference_Type
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Reference unimplemented");
      return raise Program_Error with "Unimplemented function Reference";
   end Reference;

end GSL.Spmatrix;
