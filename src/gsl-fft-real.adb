pragma Ada_2012;
with Interfaces.C;
package body GSL.Fft.Real is
   use Interfaces.C;
   use GSL.Low_Level.Gsl_Gsl_Fft_Real_H;
   ----------------------
   -- Radix2_Transform --
   ----------------------

   function Radix2_Transform
     (Data   : access Long_Float;
      Stride : Natural;
      N      : Natural) return Natural
   is
   begin
      return Natural (Gsl_Fft_Real_Radix2_Transform (Double (Data.all)'UNRESTRICTED_ACCESS, Size_T (Stride), Size_T (N)));
   end Radix2_Transform;

   ---------------
   -- Transform --
   ---------------

   function Transform
     (Data      : access Long_Float;
      Stride    : Natural;
      N         : Natural;
      Wavetable : in Gsl_Fft_Real_Wavetable;
      Work      : in Gsl_Fft_Real_Workspace'Class) return Natural
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Transform unimplemented");
      return raise Program_Error with "Unimplemented function Transform";
   end Transform;

   ------------
   -- Unpack --
   ------------

   function Unpack
     (Real_Coefficient    : access Long_Float;
      Complex_Coefficient : access Long_Float;
      Stride              : Natural;
      N                   : Natural)
      return Natural
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Unpack unimplemented");
      return raise Program_Error with "Unimplemented function Unpack";
   end Unpack;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (Self : in out Gsl_Fft_Real_Wavetable) is
   begin
      Self.Impl := GSL.Low_Level.Gsl_Gsl_Fft_Real_H.Gsl_Fft_Real_Wavetable_Alloc (Size_T (Self.Size));
   end Initialize;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Self : in out Gsl_Fft_Real_Wavetable) is
   begin
      GSL.Low_Level.Gsl_Gsl_Fft_Real_H.Gsl_Fft_Real_Wavetable_Free (Self.Impl);
   end Finalize;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (Self : in out Gsl_Fft_Real_Workspace) is
   begin
      Self.Impl := GSL.Low_Level.Gsl_Gsl_Fft_Real_H.Gsl_Fft_Real_Workspace_Alloc (Size_T (Self.Size));
   end Initialize;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Self : in out Gsl_Fft_Real_Workspace) is
   begin
      GSL.Low_Level.Gsl_Gsl_Fft_Real_H.Gsl_Fft_Real_Workspace_Free (Self.Impl);
   end Finalize;

end GSL.Fft.Real;
