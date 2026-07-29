import DualSpacesOperatorAlgebrasCanonicalLaneLean.DualSpaceOperatorAlgebra

/-!
# Commutant and Bicommutant Package
-/

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

structure CommutantBicommutantPackage {P : DualSpaceOperatorAlgebraPackage} where
  subalgebra : Type u
  commutantDefined : Prop
  bicommutantDefined : Prop
  doubleCommutantTheorem : Prop
  closureProperties : Prop

structure CommutantBicommutantEvidence {P : DualSpaceOperatorAlgebraPackage}
    (C : CommutantBicommutantPackage P) where
  commutantDefinedClosed : C.commutantDefined
  bicommutantDefinedClosed : C.bicommutantDefined
  doubleCommutantTheoremClosed : C.doubleCommutantTheorem
  closurePropertiesClosed : C.closureProperties

def CommutantBicommutantClosed {P : DualSpaceOperatorAlgebraPackage}
    (C : CommutantBicommutantPackage P) : Prop :=
  C.commutantDefined ∧ C.bicommutantDefined ∧ C.doubleCommutantTheorem ∧ C.closureProperties

theorem commutant_bicommutant_closed_from_evidence
    {P : DualSpaceOperatorAlgebraPackage}
    (C : CommutantBicommutantPackage P) (E : CommutantBicommutantEvidence C) :
    CommutantBicommutantClosed C := by
  exact And.intro E.commutantDefinedClosed
    (And.intro E.bicommutantDefinedClosed
      (And.intro E.doubleCommutantTheoremClosed E.closurePropertiesClosed))

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse
