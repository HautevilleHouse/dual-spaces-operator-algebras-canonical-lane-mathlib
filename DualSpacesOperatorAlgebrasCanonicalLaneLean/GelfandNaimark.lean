import canonicalLaneMathlib.AdmissibleClass
import DualSpacesOperatorAlgebrasCanonicalLaneLean.OperatorAlgebra

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

structure GelfandNaimarkPackage (A : OperatorAlgebraStructure) where
  isCommutative : Prop
  characterSpace : Type u
  gelfandTransform : A.underlyingSpace → (characterSpace → ℝ)
  isIsometric : Prop
  isSurjective : Prop

def gelfandNaimarkClosed (A : OperatorAlgebraStructure) (G : GelfandNaimarkPackage A) : Prop :=
  G.isIsometric ∧ G.isSurjective

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse