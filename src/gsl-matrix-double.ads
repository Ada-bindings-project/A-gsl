pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

with GSL.Low_Level.Gsl_Gsl_Block_Double_H;
with GSL.Low_Level.Gsl_Gsl_Vector_Double_H;
with Interfaces.C_Streams;
with Interfaces.C.Strings;

package GSL.Matrix.Double is

   type Gsl_Matrix (Rows , Columns : Natural) is tagged limited private;

   function Gsl_Vector_Alloc_Row_From_Matrix (Arg1 : access Gsl_Matrix; Arg2 : Size_T) return access GSL.Low_Level.Gsl_Gsl_Vector_Double_H.Gsl_Vector
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_alloc_row_from_matrix";

   function Gsl_Vector_Alloc_Col_From_Matrix (Arg1 : access Gsl_Matrix; Arg2 : Size_T) return access GSL.Low_Level.Gsl_Gsl_Vector_Double_H.Gsl_Vector
     with Import => True,
     Convention => C,
     External_Name => "gsl_vector_alloc_col_from_matrix";

   procedure Gsl_Matrix_Free (M : access Gsl_Matrix)
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_free";

   -- Views
   function Gsl_Matrix_Submatrix
     (M  : access Gsl_Matrix;
      I  : Size_T;
      J  : Size_T;
      N1 : Size_T;
      N2 : Size_T) return U_Gsl_Matrix_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_submatrix";

   function Gsl_Matrix_Row (M : access Gsl_Matrix; I : Size_T) return GSL.Low_Level.Gsl_Gsl_Vector_Double_H.U_Gsl_Vector_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_row";

   function Gsl_Matrix_Column (M : access Gsl_Matrix; J : Size_T) return GSL.Low_Level.Gsl_Gsl_Vector_Double_H.U_Gsl_Vector_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_column";

   function Gsl_Matrix_Diagonal (M : access Gsl_Matrix) return GSL.Low_Level.Gsl_Gsl_Vector_Double_H.U_Gsl_Vector_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_diagonal";

   function Gsl_Matrix_Subdiagonal (M : access Gsl_Matrix; K : Size_T) return GSL.Low_Level.Gsl_Gsl_Vector_Double_H.U_Gsl_Vector_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_subdiagonal";

   function Gsl_Matrix_Superdiagonal (M : access Gsl_Matrix; K : Size_T) return GSL.Low_Level.Gsl_Gsl_Vector_Double_H.U_Gsl_Vector_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_superdiagonal";

   function Gsl_Matrix_Subrow
     (M      : access Gsl_Matrix;
      I      : Size_T;
      Offset : Size_T;
      N      : Size_T) return GSL.Low_Level.Gsl_Gsl_Vector_Double_H.U_Gsl_Vector_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_subrow";

   function Gsl_Matrix_Subcolumn
     (M      : access Gsl_Matrix;
      J      : Size_T;
      Offset : Size_T;
      N      : Size_T) return GSL.Low_Level.Gsl_Gsl_Vector_Double_H.U_Gsl_Vector_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_subcolumn";

   function Gsl_Matrix_View_Array
     (Base : access Double;
      N1   : Size_T;
      N2   : Size_T) return U_Gsl_Matrix_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_view_array";

   function Gsl_Matrix_View_Array_With_Tda
     (Base : access Double;
      N1   : Size_T;
      N2   : Size_T;
      Tda  : Size_T) return U_Gsl_Matrix_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_view_array_with_tda";

   function Gsl_Matrix_View_Vector
     (V  : access GSL.Low_Level.Gsl_Gsl_Vector_Double_H.Gsl_Vector;
      N1 : Size_T;
      N2 : Size_T) return U_Gsl_Matrix_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_view_vector";

   function Gsl_Matrix_View_Vector_With_Tda
     (V   : access GSL.Low_Level.Gsl_Gsl_Vector_Double_H.Gsl_Vector;
      N1  : Size_T;
      N2  : Size_T;
      Tda : Size_T) return U_Gsl_Matrix_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_view_vector_with_tda";

   function Gsl_Matrix_Const_Submatrix
     (M  : access constant Gsl_Matrix;
      I  : Size_T;
      J  : Size_T;
      N1 : Size_T;
      N2 : Size_T) return U_Gsl_Matrix_Const_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_const_submatrix";

   function Gsl_Matrix_Const_Row (M : access constant Gsl_Matrix; I : Size_T) return GSL.Low_Level.Gsl_Gsl_Vector_Double_H.U_Gsl_Vector_Const_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_const_row";

   function Gsl_Matrix_Const_Column (M : access constant Gsl_Matrix; J : Size_T) return GSL.Low_Level.Gsl_Gsl_Vector_Double_H.U_Gsl_Vector_Const_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_const_column";

   function Gsl_Matrix_Const_Diagonal (M : access constant Gsl_Matrix) return GSL.Low_Level.Gsl_Gsl_Vector_Double_H.U_Gsl_Vector_Const_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_const_diagonal";

   function Gsl_Matrix_Const_Subdiagonal (M : access constant Gsl_Matrix; K : Size_T) return GSL.Low_Level.Gsl_Gsl_Vector_Double_H.U_Gsl_Vector_Const_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_const_subdiagonal";

   function Gsl_Matrix_Const_Superdiagonal (M : access constant Gsl_Matrix; K : Size_T) return GSL.Low_Level.Gsl_Gsl_Vector_Double_H.U_Gsl_Vector_Const_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_const_superdiagonal";

   function Gsl_Matrix_Const_Subrow
     (M      : access constant Gsl_Matrix;
      I      : Size_T;
      Offset : Size_T;
      N      : Size_T) return GSL.Low_Level.Gsl_Gsl_Vector_Double_H.U_Gsl_Vector_Const_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_const_subrow";

   function Gsl_Matrix_Const_Subcolumn
     (M      : access constant Gsl_Matrix;
      J      : Size_T;
      Offset : Size_T;
      N      : Size_T) return GSL.Low_Level.Gsl_Gsl_Vector_Double_H.U_Gsl_Vector_Const_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_const_subcolumn";

   function Gsl_Matrix_Const_View_Array
     (Base : access Double;
      N1   : Size_T;
      N2   : Size_T) return U_Gsl_Matrix_Const_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_const_view_array";

   function Gsl_Matrix_Const_View_Array_With_Tda
     (Base : access Double;
      N1   : Size_T;
      N2   : Size_T;
      Tda  : Size_T) return U_Gsl_Matrix_Const_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_const_view_array_with_tda";

   function Gsl_Matrix_Const_View_Vector
     (V  : access constant GSL.Low_Level.Gsl_Gsl_Vector_Double_H.Gsl_Vector;
      N1 : Size_T;
      N2 : Size_T) return U_Gsl_Matrix_Const_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_const_view_vector";

   function Gsl_Matrix_Const_View_Vector_With_Tda
     (V   : access constant GSL.Low_Level.Gsl_Gsl_Vector_Double_H.Gsl_Vector;
      N1  : Size_T;
      N2  : Size_T;
      Tda : Size_T) return U_Gsl_Matrix_Const_View
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_const_view_vector_with_tda";

   -- Operations
   procedure Gsl_Matrix_Set_Zero (M : access Gsl_Matrix)
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_set_zero";

   procedure Gsl_Matrix_Set_Identity (M : access Gsl_Matrix)
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_set_identity";

   procedure Gsl_Matrix_Set_All (M : access Gsl_Matrix; X : Double)
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_set_all";

   function Gsl_Matrix_Fread (Stream : Interfaces.C_Streams.FILEs; M : access Gsl_Matrix) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_fread";

   function Gsl_Matrix_Fwrite (Stream : Interfaces.C_Streams.FILEs; M : access constant Gsl_Matrix) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_fwrite";

   function Gsl_Matrix_Fscanf (Stream : Interfaces.C_Streams.FILEs; M : access Gsl_Matrix) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_fscanf";

   function Gsl_Matrix_Fprintf
     (Stream : Interfaces.C_Streams.FILEs;
      M      : access constant Gsl_Matrix;
      Format : Interfaces.C.Strings.chars_ptr) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_fprintf";

   function Gsl_Matrix_Memcpy (Dest : access Gsl_Matrix; Src : access constant Gsl_Matrix) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_memcpy";

   function Gsl_Matrix_Swap (M1 : access Gsl_Matrix; M2 : access Gsl_Matrix) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_swap";

   function Gsl_Matrix_Tricpy
     (Uplo_Src  : Char;
      Copy_Diag : int;
      Dest      : access Gsl_Matrix;
      Src       : access constant Gsl_Matrix) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_tricpy";

   function Gsl_Matrix_Swap_Rows
     (M : access Gsl_Matrix;
      I : Size_T;
      J : Size_T) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_swap_rows";

   function Gsl_Matrix_Swap_Columns
     (M : access Gsl_Matrix;
      I : Size_T;
      J : Size_T) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_swap_columns";

   function Gsl_Matrix_Swap_Rowcol
     (M : access Gsl_Matrix;
      I : Size_T;
      J : Size_T) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_swap_rowcol";

   function Gsl_Matrix_Transpose (M : access Gsl_Matrix) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_transpose";

   function Gsl_Matrix_Transpose_Memcpy (Dest : access Gsl_Matrix; Src : access constant Gsl_Matrix) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_transpose_memcpy";

   function Gsl_Matrix_Transpose_Tricpy
     (Uplo_Src  : Char;
      Copy_Diag : int;
      Dest      : access Gsl_Matrix;
      Src       : access constant Gsl_Matrix) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_transpose_tricpy";

   function Gsl_Matrix_Max (M : access constant Gsl_Matrix) return Double
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_max";

   function Gsl_Matrix_Min (M : access constant Gsl_Matrix) return Double
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_min";

   procedure Gsl_Matrix_Minmax
     (M       : access constant Gsl_Matrix;
      Min_Out : access Double;
      Max_Out : access Double)
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_minmax";

   procedure Gsl_Matrix_Max_Index
     (M    : access constant Gsl_Matrix;
      Imax : access Size_T;
      Jmax : access Size_T)
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_max_index";

   procedure Gsl_Matrix_Min_Index
     (M    : access constant Gsl_Matrix;
      Imin : access Size_T;
      Jmin : access Size_T)
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_min_index";

   procedure Gsl_Matrix_Minmax_Index
     (M    : access constant Gsl_Matrix;
      Imin : access Size_T;
      Jmin : access Size_T;
      Imax : access Size_T;
      Jmax : access Size_T)
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_minmax_index";

   function Gsl_Matrix_Equal (A : access constant Gsl_Matrix; B : access constant Gsl_Matrix) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_equal";

   function Gsl_Matrix_Isnull (M : access constant Gsl_Matrix) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_isnull";

   function Gsl_Matrix_Ispos (M : access constant Gsl_Matrix) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_ispos";

   function Gsl_Matrix_Isneg (M : access constant Gsl_Matrix) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_isneg";

   function Gsl_Matrix_Isnonneg (M : access constant Gsl_Matrix) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_isnonneg";

   function Gsl_Matrix_Add (A : access Gsl_Matrix; B : access constant Gsl_Matrix) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_add";

   function Gsl_Matrix_Sub (A : access Gsl_Matrix; B : access constant Gsl_Matrix) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_sub";

   function Gsl_Matrix_Mul_Elements (A : access Gsl_Matrix; B : access constant Gsl_Matrix) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_mul_elements";

   function Gsl_Matrix_Div_Elements (A : access Gsl_Matrix; B : access constant Gsl_Matrix) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_div_elements";

   function Gsl_Matrix_Scale (A : access Gsl_Matrix; X : Double) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_scale";

   function Gsl_Matrix_Add_Constant (A : access Gsl_Matrix; X : Double) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_add_constant";

   function Gsl_Matrix_Add_Diagonal (A : access Gsl_Matrix; X : Double) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_add_diagonal";

   --*********************************************************************
   -- The functions below are obsolete
   --*********************************************************************
   function Gsl_Matrix_Get_Row
     (V : access GSL.Low_Level.Gsl_Gsl_Vector_Double_H.Gsl_Vector;
      M : access constant Gsl_Matrix;
      I : Size_T) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_get_row";

   function Gsl_Matrix_Get_Col
     (V : access GSL.Low_Level.Gsl_Gsl_Vector_Double_H.Gsl_Vector;
      M : access constant Gsl_Matrix;
      J : Size_T) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_get_col";

   function Gsl_Matrix_Set_Row
     (M : access Gsl_Matrix;
      I : Size_T;
      V : access constant GSL.Low_Level.Gsl_Gsl_Vector_Double_H.Gsl_Vector) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_set_row";

   function Gsl_Matrix_Set_Col
     (M : access Gsl_Matrix;
      J : Size_T;
      V : access constant GSL.Low_Level.Gsl_Gsl_Vector_Double_H.Gsl_Vector) return int
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_set_col";

   --*********************************************************************
   -- inline functions if you are using GCC
   function Gsl_Matrix_Get
     (M : access constant Gsl_Matrix;
      I : Size_T;
      J : Size_T) return Double
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_get";

   procedure Gsl_Matrix_Set
     (M : access Gsl_Matrix;
      I : Size_T;
      J : Size_T;
      X : Double)
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_set";

   function Gsl_Matrix_Ptr
     (Arg1 : access Gsl_Matrix;
      Arg2 : Size_T;
      Arg3 : Size_T) return access Double
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_ptr";

   function Gsl_Matrix_Const_Ptr
     (Arg1 : access constant Gsl_Matrix;
      Arg2 : Size_T;
      Arg3 : Size_T) return access Double
     with Import => True,
     Convention => C,
     External_Name => "gsl_matrix_const_ptr";

end GSL.Matrix.Double;
