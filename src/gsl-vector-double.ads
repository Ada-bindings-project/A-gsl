pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.Gsl_Gsl_Block_Double_H;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Vector.Double is


   type Gsl_Vector (Size : Natural)is tagged limited private;


   -- Views
   function Gsl_Vector_View_Array (V : access Double; N : Size_T) return U_Gsl_Vector_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_view_array";

   function Gsl_Vector_View_Array_With_Stride
     (Base   : access Double;
      Stride : Size_T;
      N      : Size_T) return U_Gsl_Vector_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_view_array_with_stride";

   function Gsl_Vector_Const_View_Array (V : access Double; N : Size_T) return U_Gsl_Vector_Const_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_const_view_array";

   function Gsl_Vector_Const_View_Array_With_Stride
     (Base   : access Double;
      Stride : Size_T;
      N      : Size_T) return U_Gsl_Vector_Const_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_const_view_array_with_stride";

   function Gsl_Vector_Subvector
     (V : access Gsl_Vector;
      I : Size_T;
      N : Size_T) return U_Gsl_Vector_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_subvector";

   function Gsl_Vector_Subvector_With_Stride
     (V      : access Gsl_Vector;
      I      : Size_T;
      Stride : Size_T;
      N      : Size_T) return U_Gsl_Vector_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_subvector_with_stride";

   function Gsl_Vector_Const_Subvector
     (V : access constant Gsl_Vector;
      I : Size_T;
      N : Size_T) return U_Gsl_Vector_Const_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_const_subvector";

   function Gsl_Vector_Const_Subvector_With_Stride
     (V      : access constant Gsl_Vector;
      I      : Size_T;
      Stride : Size_T;
      N      : Size_T) return U_Gsl_Vector_Const_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_const_subvector_with_stride";

   -- Operations
   procedure Gsl_Vector_Set_Zero (V : access Gsl_Vector)
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_set_zero";

   procedure Gsl_Vector_Set_All (V : access Gsl_Vector; X : Double)
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_set_all";

   function Gsl_Vector_Set_Basis (V : access Gsl_Vector; I : Size_T) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_set_basis";

   function Gsl_Vector_Fread (Stream : Interfaces.C_Streams.FILEs; V : access Gsl_Vector) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_fread";

   function Gsl_Vector_Fwrite (Stream : Interfaces.C_Streams.FILEs; V : access constant Gsl_Vector) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_fwrite";

   function Gsl_Vector_Fscanf (Stream : Interfaces.C_Streams.FILEs; V : access Gsl_Vector) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_fscanf";

   function Gsl_Vector_Fprintf
     (Stream : Interfaces.C_Streams.FILEs;
      V      : access constant Gsl_Vector;
      Format : Interfaces.C.Strings.chars_ptr) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_fprintf";

   function Gsl_Vector_Memcpy (Dest : access Gsl_Vector; Src : access constant Gsl_Vector) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_memcpy";

   function Gsl_Vector_Reverse (V : access Gsl_Vector) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_reverse";

   function Gsl_Vector_Swap (V : access Gsl_Vector; W : access Gsl_Vector) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_swap";

   function Gsl_Vector_Swap_Elements
     (V : access Gsl_Vector;
      I : Size_T;
      J : Size_T) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_swap_elements";

   function Gsl_Vector_Max (V : access constant Gsl_Vector) return Double
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_max";

   function Gsl_Vector_Min (V : access constant Gsl_Vector) return Double
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_min";

   procedure Gsl_Vector_Minmax
     (V       : access constant Gsl_Vector;
      Min_Out : access Double;
      Max_Out : access Double)
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_minmax";

   function Gsl_Vector_Max_Index (V : access constant Gsl_Vector) return Size_T
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_max_index";

   function Gsl_Vector_Min_Index (V : access constant Gsl_Vector) return Size_T
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_min_index";

   procedure Gsl_Vector_Minmax_Index
     (V    : access constant Gsl_Vector;
      Imin : access Size_T;
      Imax : access Size_T)
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_minmax_index";

   function Gsl_Vector_Add (A : access Gsl_Vector; B : access constant Gsl_Vector) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_add";

   function Gsl_Vector_Sub (A : access Gsl_Vector; B : access constant Gsl_Vector) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_sub";

   function Gsl_Vector_Mul (A : access Gsl_Vector; B : access constant Gsl_Vector) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_mul";

   function Gsl_Vector_Div (A : access Gsl_Vector; B : access constant Gsl_Vector) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_div";

   function Gsl_Vector_Scale (A : access Gsl_Vector; X : Double) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_scale";

   function Gsl_Vector_Add_Constant (A : access Gsl_Vector; X : Double) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_add_constant";

   function Gsl_Vector_Equal (U : access constant Gsl_Vector; V : access constant Gsl_Vector) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_equal";

   function Gsl_Vector_Isnull (V : access constant Gsl_Vector) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_isnull";

   function Gsl_Vector_Ispos (V : access constant Gsl_Vector) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_ispos";

   function Gsl_Vector_Isneg (V : access constant Gsl_Vector) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_isneg";

   function Gsl_Vector_Isnonneg (V : access constant Gsl_Vector) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_isnonneg";

   function Gsl_Vector_Get (V : access constant Gsl_Vector; I : Size_T) return Double
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_get";

   procedure Gsl_Vector_Set
     (V : access Gsl_Vector;
      I : Size_T;
      X : Double)
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_set";

   function Gsl_Vector_Ptr (Arg1 : access Gsl_Vector; Arg2 : Size_T) return access Double
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_ptr";

   function Gsl_Vector_Const_Ptr (Arg1 : access constant Gsl_Vector; Arg2 : Size_T) return access Double
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_const_ptr";

end GSL.Vector.Double;
