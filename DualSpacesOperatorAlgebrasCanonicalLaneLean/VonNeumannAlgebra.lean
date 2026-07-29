import canonicalLaneMathlib.AdmissibleClass
import DualSpacesOperatorAlgebrasCanonicalLaneLean.OperatorAlgebra

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

structure VonNeumannAlgebraStructure (A : OperatorAlgebraStructure) where
  isDoublyCommutant : Prop
  predualSpace : Type u
  predualPairing : predualSpace → A.underlyingSpace → ℝ
  isWClosed : Prop

def vonNeumannAlgebraClosed (A : OperatorAlgebraStructure) (V : VonNeumannAlgebraStructure A) : Prop :=
  V.isDoublyCommutant ∧ V.isWClosed

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse