import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

structure OperatorAlgebraPackage where
  carrier : Type u
  norm : carrier → ℝ
  multiplication : carrier → carrier → carrier
  involution : carrier → carrier
  unitElement : carrier
  algebraClosed : Prop
  starAlgebraClosed : Prop
  cStarIdentity : Prop

structure OperatorAlgebraEvidence (A : OperatorAlgebraPackage) where
  algebraClosedClosed : A.algebraClosed
  starAlgebraClosedClosed : A.starAlgebraClosed
  cStarIdentityClosed : A.cStarIdentity

def OperatorAlgebraClosed (A : OperatorAlgebraPackage) : Prop :=
  A.algebraClosed ∧ A.starAlgebraClosed ∧ A.cStarIdentity

theorem operator_algebra_closed_from_evidence (A : OperatorAlgebraPackage) (E : OperatorAlgebraEvidence A) :
    OperatorAlgebraClosed A := by
  exact And.intro E.algebraClosedClosed (And.intro E.starAlgebraClosedClosed E.cStarIdentityClosed)

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse
