import canonicalLaneMathlib.AdmissibleClass
import DualSpacesOperatorAlgebrasCanonicalLaneLean.OperatorAlgebra

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

structure StateSpacePackage (A : OperatorAlgebraStructure) where
  state : A.underlyingSpace → ℝ
  isPositive : Prop
  isNormalized : Prop
  isLinear : Prop

def stateClosed (A : OperatorAlgebraStructure) (S : StateSpacePackage A) : Prop :=
  S.isPositive ∧ S.isNormalized ∧ S.isLinear

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse