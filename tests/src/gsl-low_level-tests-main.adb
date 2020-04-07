with Ada.Text_IO; use Ada.Text_IO;
with GSL.Low_Level.Gsl_Gsl_Block_Int_H;
with GSL.Low_Level.Gsl_Gsl_Version_H;
with Interfaces.C;
with Interfaces.C.Strings;
with Interfaces.C_Streams;
procedure GSL.Low_Level.Tests.Main is
   use GSL.Low_Level.Gsl_Gsl_Block_Int_H;
   F       : aliased Interfaces.C_Streams.FILEs;
   Name    : aliased constant String := "test.data" & ASCII.NUL;
   Mode    : aliased constant String := "w" & ASCII.NUL;
   Result  : Interfaces.C_Streams.int;
   Block   : access Gsl_Block_Int := Gsl_Block_Int_Alloc (100);
   R       : Interfaces.C.int;
begin

   Put_Line (Interfaces.C.Strings.Value (GSL.Low_Level.Gsl_Gsl_Version_H.Gsl_Version));
   F := Interfaces.C_Streams.Fopen (Name'Address, Mode'Address);
   R := Gsl_Block_Int_Fwrite (F, Block);

   Result := Interfaces.C_Streams.Fclose (F);
end GSL.Low_Level.Tests.Main;
