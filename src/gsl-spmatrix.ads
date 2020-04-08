private with GSL.Low_Level.Gsl_Gsl_Spmatrix_H;
private with Ada.Finalization;
with Interfaces.C_Streams;

package GSL.Spmatrix is

   type Gsl_Spmatrix (Rows, Columns : Natural)is tagged private with
     Constant_Indexing => Constant_Reference,
     Variable_Indexing => Reference;

   function Nz (Self : Gsl_Spmatrix) return Natural with Inline;
   function Size1 (Self : Gsl_Spmatrix) return Natural with Inline;
   function Size2 (Self : Gsl_Spmatrix) return Natural with Inline;
   function P (Self : Gsl_Spmatrix; Index : Natural) return Natural with Inline;
   function Data (Self : Gsl_Spmatrix; Index : Natural) return Long_Float with Inline;
   function I (Self : Gsl_Spmatrix; Index : Natural) return Long_Float with Inline;

   procedure Fprintf (Self : Gsl_Spmatrix; Stream : Interfaces.C_Streams.FILEs; Format : String);
   --  This function writes the elements of the matrix m line-by-line to the
   --  stream stream using the format specifier format,
   --  which should be one of the %g, %e or %f formats for floating point numbers.
   --  The function raises GSL_EFAILED if there was a problem writing to the file.
   --  The input matrix m may be in any storage format,
   --  and the output file will be written in MatrixMarket format.

   function Compressed_Column_Format (Self : Gsl_Spmatrix) return Gsl_Spmatrix;
   function Ccs (Self : Gsl_Spmatrix) return Gsl_Spmatrix renames Compressed_Column_Format;

   function Compressed_Row_Format (Self : Gsl_Spmatrix) return Gsl_Spmatrix;
   function Crs (Self : Gsl_Spmatrix) return Gsl_Spmatrix renames Compressed_Row_Format;


   type Constant_Reference_Type
     (Element : not null access constant Long_Float) is private
     with
       Implicit_Dereference => Element;

   type Reference_Type (Element : not null access Long_Float) is private
     with
       Implicit_Dereference => Element;

   function Constant_Reference
     (Container : aliased Gsl_Spmatrix;
      Row       : Natural;
      Column    : Natural) return Constant_Reference_Type;
   pragma Inline (Constant_Reference);

   function Reference
     (Container : aliased in out Gsl_Spmatrix;
      Row       : Natural;
      Column    : Natural) return Reference_Type;
   pragma Inline (Reference);

private
   type Gsl_Spmatrix (Rows, Columns : Natural) is new Ada.Finalization.Controlled with record
      Impl : access GSL.Low_Level.Gsl_Gsl_Spmatrix_H.Gsl_Spmatrix;
   end record;

   type Constant_Reference_Type
     (Element : not null access constant Long_Float) is
   record
      null;
   end record;

   type Reference_Type (Element : not null access Long_Float) is
   record
      null;
   end record;
end GSL.Spmatrix;
