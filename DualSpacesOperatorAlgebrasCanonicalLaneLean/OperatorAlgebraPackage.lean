import DualSpacesOperatorAlgebrasCanonicalLaneLean.BanachDualPackage

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

structure OperatorAlgebraPackage (B : BanachDualPackage) where
  multiplication : B.space → B.space → B.space
  associativity : Prop
  distributivity : Prop
  submultiplicativity : Prop
  involution : B.space → B.space
  cStarIdentity : Prop
  associativityClosed : associativity
  distributivityClosed : distributivity
  submultiplicativityClosed : submultiplicativity
  cStarIdentityClosed : cStarIdentity

structure OperatorAlgebraEvidence {B : BanachDualPackage}
    (A : OperatorAlgebraPackage B) where
  associativityClosed : A.associativity
  distributivityClosed : A.distributivity
  submultiplicativityClosed : A.submultiplicativity
  cStarIdentityClosed : A.cStarIdentity

def OperatorAlgebraClosed {B : BanachDualPackage}
    (A : OperatorAlgebraPackage B) : Prop :=
  A.associativity ∧ A.distributivity ∧ A.submultiplicativity ∧ A.cStarIdentity

theorem operator_algebra_closed_from_evidence
    {B : BanachDualPackage} (A : OperatorAlgebraPackage B)
    (E : OperatorAlgebraEvidence A) : OperatorAlgebraClosed A := by
  exact And.intro E.associativityClosed
    (And.intro E.distributivityClosed
      (And.intro E.submultiplicativityClosed E.cStarIdentityClosed))

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse