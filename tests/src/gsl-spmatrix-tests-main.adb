--------------------------------------------------------------------------------
-- test program found at:
--   https://www.gnu.org/software/gsl/doc/html/spmatrix.html
--------------------------------------------------------------------------------
with Ada.Text_IO; use Ada.Text_IO;
with Interfaces;
procedure GSL.Spmatrix.Tests.Main is
   A : Gsl_Spmatrix (5, 4);
   B : Gsl_Spmatrix (0, 0);
   C : Gsl_Spmatrix (0, 0);
begin
   A (0, 2) := 3.1;
   A (0, 3) := 4.6;
   A (1, 0) := 1.0;
   A (1, 2) := 7.2;
   A (3, 0) := 2.1;
   A (3, 1) := 2.9;
   A (3, 3) := 8.5;
   A (4, 0) := 4.1;
   
   Put_Line ("printing all matrix elements:");
   for I in 0 .. 5 loop
      for J in 0 .. 5 loop
         Put_Line ("A(" & I'Img & "," & J'Img & ") =" & Long_Float'(A (I, J))'Img);
      end loop;
   end loop;

   --  print out elements in triplet format
   Put_Line ("matrix in triplet format (i,j,Aij):");
   A.Fprintf (Interfaces.C_Streams.Stdout, "%.1f");

   --  convert to compressed column format
   B := A.Compressed_Column_Format;

   Put_Line ("matrix in compressed column format:");

   Put ("i = [" );
   for I in 0 .. B.Nz loop
      Put (B.I (I)'Img);
   end loop;
   Put_Line ("]" );
   Put ("i = [" );
   for I in 0 .. B.Size2 + 1 loop
      Put (B.P (I)'Img);
   end loop;
   Put_Line ("]" );
   for I in 0 .. B.Nz loop
      Put (B.Data (I)'Img);
   end loop;
   Put_Line ("]" );
   
   
   
   
   --  convert to compressed row format 
   C := A.Compressed_Row_Format;
   Put_Line ("matrix in compressed compressed format:");
   Put ("i = [" );
   for I in 0 .. C.Nz loop
      Put (C.I (I)'Img);
   end loop;
   Put_Line ("]" );
   Put ("i = [" );
   for I in 0 .. C.Size1 + 1 loop
      Put (C.P (I)'Img);
   end loop;
   Put_Line ("]" );
   for I in 0 .. C.Nz loop
      Put (C.Data (I)'Img);
   end loop;
   Put_Line ("]" );

end GSL.Spmatrix.Tests.Main;
