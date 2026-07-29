import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

structure DualSpacePackage where
  originalSpace : Type u
  dualSpace : Type v
  pairing : originalSpace → dualSpace → ℝ
  weakStarTopology : Prop
  boundedLinearFunctionals : Prop
  hahnBanachExtension : Prop
  originalNormed : Prop
  dualNormed : Prop

structure DualSpaceEvidence (D : DualSpacePackage) where
  pairingBilinearClosed : D.pairing ≠ λ _ _ => 0
  weakStarTopologyClosed : D.weakStarTopology
  boundedLinearFunctionalsClosed : D.boundedLinearFunctionals
  hahnBanachExtensionClosed : D.hahnBanachExtension
  originalNormedClosed : D.originalNormed
  dualNormedClosed : D.dualNormed

def DualSpaceClosed (D : DualSpacePackage) : Prop :=
  D.weakStarTopology ∧ D.boundedLinearFunctionals ∧ D.hahnBanachExtension ∧ D.originalNormed ∧ D.dualNormed

theorem dual_space_closed_from_evidence (D : DualSpacePackage) (E : DualSpaceEvidence D) :
    DualSpaceClosed D := by
  exact And.intro E.weakStarTopologyClosed
    (And.intro E.boundedLinearFunctionalsClosed
      (And.intro E.hahnBanachExtensionClosed
        (And.intro E.originalNormedClosed E.dualNormedClosed)))

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse
