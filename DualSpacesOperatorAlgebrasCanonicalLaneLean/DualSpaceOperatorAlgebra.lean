import DualSpacesOperatorAlgebrasCanonicalLaneLean.BridgeLemmas

/-!
# Dual Space Operator Algebra Package
-/

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

structure DualSpaceOperatorAlgebraPackage where
  banachSpace : Type u
  dualSpace : Type v
  operatorNorm : Prop
  weakStarTopology : Prop
  banachAlaogluCompact : Prop
  isometricEmbedding : Prop

structure DualSpaceOperatorAlgebraEvidence (P : DualSpaceOperatorAlgebraPackage) where
  operatorNormClosed : P.operatorNorm
  weakStarTopologyClosed : P.weakStarTopology
  banachAlaogluCompactClosed : P.banachAlaogluCompact
  isometricEmbeddingClosed : P.isometricEmbedding

def DualSpaceOperatorAlgebraClosed (P : DualSpaceOperatorAlgebraPackage) : Prop :=
  P.operatorNorm ∧ P.weakStarTopology ∧ P.banachAlaogluCompact ∧ P.isometricEmbedding

theorem dual_space_operator_algebra_closed_from_evidence
    (P : DualSpaceOperatorAlgebraPackage) (E : DualSpaceOperatorAlgebraEvidence P) :
    DualSpaceOperatorAlgebraClosed P := by
  exact And.intro E.operatorNormClosed
    (And.intro E.weakStarTopologyClosed
      (And.intro E.banachAlaogluCompactClosed E.isometricEmbeddingClosed))

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse
