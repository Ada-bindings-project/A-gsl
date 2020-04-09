private with GSL.Low_Level.Gsl_Gsl_Fft_Real_H;
private with Ada.Finalization;
with Ada.Numerics.Long_Real_Arrays;
package GSL.Fft.Real is

   function Radix2_Transform
     (Data   : Ada.Numerics.Long_Real_Arrays.Real_Vector;
      Stride : Natural) return Natural;

   type Gsl_Fft_Real_Wavetable (Size : Natural) is tagged private;

   type Gsl_Fft_Real_Workspace  (Size : Natural) is tagged private;

   function Transform
     (Data      : Ada.Numerics.Long_Real_Arrays.Real_Vector;
      Stride    : Natural;
      Wavetable : in Gsl_Fft_Real_Wavetable;
      Work      : in Gsl_Fft_Real_Workspace'Class) return Natural;

   function Unpack
     (Real_Coefficient    : Ada.Numerics.Long_Real_Arrays.Real_Vector;
      Complex_Coefficient : Ada.Numerics.Long_Real_Arrays.Real_Vector;
      Stride              : Natural) return Natural;

private
   type Gsl_Fft_Real_Wavetable  (Size : Natural) is new Ada.Finalization.Limited_Controlled with record
      Impl : access GSL.Low_Level.Gsl_Gsl_Fft_Real_H.Gsl_Fft_Real_Wavetable;
   end record;
   procedure Initialize (Self : in out Gsl_Fft_Real_Wavetable);
   procedure Finalize   (Self : in out Gsl_Fft_Real_Wavetable);

   type Gsl_Fft_Real_Workspace (Size : Natural) is new Ada.Finalization.Limited_Controlled with record
      Impl : access GSL.Low_Level.Gsl_Gsl_Fft_Real_H.Gsl_Fft_Real_Workspace;
   end record;
   procedure Initialize (Self : in out Gsl_Fft_Real_Workspace);
   procedure Finalize   (Self : in out Gsl_Fft_Real_Workspace);

end GSL.Fft.Real;
