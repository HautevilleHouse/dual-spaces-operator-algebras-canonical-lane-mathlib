import canonicalLaneMathlib.AdmissibleClass
import DualSpacesOperatorAlgebrasCanonicalLaneLean.VonNeumannAlgebra

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

structure TomitaTakesakiPackage (A : OperatorAlgebraStructure) (V : VonNeumannAlgebraStructure A) where
  modularOperator : A.underlyingSpace → A.underlyingSpace
  modularConjugation : A.underlyingSpace → A.underlyingSpace
  isPositive : Prop
  isAntiunitary : Prop
  satisfiesModularCondition : Prop

def tomitaTakesakiClosed (A : OperatorAlgebraStructure) (V : VonNeumannAlgebraStructure A) (T : TomitaTakesakiPackage A V) : Prop :=
  T.isPositive ∧ T.isAntiunitary ∧ T.satisfiesModularCondition

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse