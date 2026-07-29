import DualSpacesOperatorAlgebrasCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

structure BanachDualPackage where
  space : Type u
  norm : space → ℝ
  dual : Type v
  dualNorm : dual → ℝ
  isBanach : Prop
  isDual : Prop
  isometricEmbedding : Prop
  isometricEmbeddingClosed : isometricEmbedding

structure BanachDualEvidence (B : BanachDualPackage) where
  isBanachClosed : B.isBanach
  isDualClosed : B.isDual

def BanachDualClosed (B : BanachDualPackage) : Prop :=
  B.isBanach ∧ B.isDual ∧ B.isometricEmbedding

theorem banach_dual_closed_from_evidence (B : BanachDualPackage)
    (E : BanachDualEvidence B) : BanachDualClosed B := by
  exact And.intro E.isBanachClosed (And.intro E.isDualClosed B.isometricEmbeddingClosed)

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse