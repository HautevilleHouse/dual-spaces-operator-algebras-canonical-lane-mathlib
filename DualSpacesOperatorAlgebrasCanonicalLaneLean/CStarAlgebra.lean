import DualSpacesOperatorAlgebrasCanonicalLaneLean.VonNeumannAlgebra

/-!
# C*-Algebra Package
-/

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

structure CStarAlgebraPackage {P : DualSpaceOperatorAlgebraPackage}
    {C : CommutantBicommutantPackage P} {V : VonNeumannAlgebraPackage P C} where
  involutive : Prop
  cstarIdentity : Prop
  spectrumNonempty : Prop
  continuousFunctionalCalculus : Prop

structure CStarAlgebraEvidence {P : DualSpaceOperatorAlgebraPackage}
    {C : CommutantBicommutantPackage P} {V : VonNeumannAlgebraPackage P C}
    (S : CStarAlgebraPackage P C V) where
  involutiveClosed : S.involutive
  cstarIdentityClosed : S.cstarIdentity
  spectrumNonemptyClosed : S.spectrumNonempty
  continuousFunctionalCalculusClosed : S.continuousFunctionalCalculus

def CStarAlgebraClosed {P : DualSpaceOperatorAlgebraPackage}
    {C : CommutantBicommutantPackage P} {V : VonNeumannAlgebraPackage P C}
    (S : CStarAlgebraPackage P C V) : Prop :=
  S.involutive ∧ S.cstarIdentity ∧ S.spectrumNonempty ∧ S.continuousFunctionalCalculus

theorem cstar_algebra_closed_from_evidence
    {P : DualSpaceOperatorAlgebraPackage} {C : CommutantBicommutantPackage P}
    {V : VonNeumannAlgebraPackage P C} (S : CStarAlgebraPackage P C V)
    (E : CStarAlgebraEvidence S) : CStarAlgebraClosed S := by
  exact And.intro E.involutiveClosed
    (And.intro E.cstarIdentityClosed
      (And.intro E.spectrumNonemptyClosed E.continuousFunctionalCalculusClosed))

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse
