import DualSpacesOperatorAlgebrasCanonicalLaneLean.OperatorAlgebraPackage

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasCanonicalLaneLean

structure CommutantPackage {B : BanachDualPackage}
    (A : OperatorAlgebraPackage B) where
  commutant : Set B.space
  doubleCommutant : Set B.space
  commutantIsSubalgebra : Prop
  doubleCommutantContainsA : Prop
  vonNeumannBicommutant : Prop
  commutantIsSubalgebraClosed : commutantIsSubalgebra
  doubleCommutantContainsAClosed : doubleCommutantContainsA
  vonNeumannBicommutantClosed : vonNeumannBicommutant

structure CommutantEvidence {B : BanachDualPackage}
    {A : OperatorAlgebraPackage B} (C : CommutantPackage A) where
  commutantIsSubalgebraClosed : C.commutantIsSubalgebra
  doubleCommutantContainsAClosed : C.doubleCommutantContainsA
  vonNeumannBicommutantClosed : C.vonNeumannBicommutant

def CommutantClosed {B : BanachDualPackage}
    {A : OperatorAlgebraPackage B} (C : CommutantPackage A) : Prop :=
  C.commutantIsSubalgebra ∧ C.doubleCommutantContainsA ∧ C.vonNeumannBicommutant

theorem commutant_closed_from_evidence
    {B : BanachDualPackage} {A : OperatorAlgebraPackage B}
    (C : CommutantPackage A) (E : CommutantEvidence C) :
    CommutantClosed C := by
  exact And.intro E.commutantIsSubalgebraClosed
    (And.intro E.doubleCommutantContainsAClosed E.vonNeumannBicommutantClosed)

end DualSpacesOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse